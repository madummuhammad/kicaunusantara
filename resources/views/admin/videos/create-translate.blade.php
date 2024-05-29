@extends('adminlte::page')

@section('title', __('title.add_video_post_translation'))

@section('content_top_nav_right')
    <x-navbar-language-widget />
@endsection

@section('content_header')
    <x-breadcrumbs title="{{ __('title.add_video_post_translation') }}" currentActive="{{ __('title.translation') }}" :addLink="[__('title.video_posts') => route('videos.index')]"/>
@stop

@section('plugins.Flag', true)
@section('plugins.BootstrapTagInput', true)
@section('plugins.Tinymce', true)
@section('plugins.Select2', true)
@section('plugins.Filepond', true)
@section('plugins.Player', true)
@section('plugins.Pace', true)
@section('plugins.Toastr', true)
@section('plugins.Sweetalert2', true)

@section('content')
    <form id="form" action="{{ route('videos.store') }}" method="POST" role="form" enctype="multipart/form-data">
        <input type="hidden" name="id_source_post" value="{{ $post->id }}">
        @csrf
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header d-flex p-0">
                        <h3 class="card-title p-3">
                            @if($post->post_type == 'video_file')
                                {{ __('title.upload_video') }}
                            @elseif($post->post_type == 'video_url')
                                {{ __('title.url') }}
                            @else
                            {{ __('title.embed') }}
                            @endif
                        </h3>
                    </div><!-- /.card-header -->
                    <div class="card-body">
                        <div class="tab-content">
                            <input type="hidden" name="post_type" id="post_type" value="{{ $post->post_type }}">
                        <div class="tab-pane @if($post->post_type == 'video_file') active @endif" id="video_file">
                            <div class="form-group" id="file">
                                <div class="container-plyr" @if($isShowPlayer == FALSE) hidden @endif @error('post_source') hidden @enderror>
                                    @php
                                        $width = ($post->post_type == "video_file") ? '100%' : '640';
                                        $poster = ($post->post_image) ? asset('storage/images/'.$post->post_image) : '';
                                    @endphp
                                    <video playsinline controls data-poster="{{ $poster }}">
                                        <source src="{{ $postSource }}"/>
                                    </video>
                                </div>
                                <div class="container-upload" @if($isShowPlayer == TRUE) hidden @endif @error('post_source') @else @if($fileExists AND $dbExists) hidden @endif @enderror>
                                    <input type="file" id="_upload_video" name="post_source" class="video_file @error('post_source') is-invalid @enderror"/>
                                    @error('post_source')
                                    <div class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <!-- /.tab-pane -->
                        <div class="tab-pane @if($post->post_type == 'video_url') active @endif" id="video_url">
                            <div class="form-group" id="url">
                                @php
                                    if ($post->post_type == 'video_url'){
                                        $value = old('post_source') ? old('post_source') : $post->post_source;
                                    } else {
                                        $value = '';
                                    }
                                @endphp
                                <input type="text" name="post_source" @if($post->post_type != 'video_url') disabled @endif class="video_url form-control @error('post_source') is-invalid @enderror" placeholder="{{ __('form.placeholder_url') }}" value="{{ $value }}">
                                @error('post_source')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                        </div>
                        <!-- /.tab-pane -->
                        <div class="tab-pane @if($post->post_type == 'video_embed') active @endif" id="video_embed">
                            @php
                            if (is_array($post->post_source)) {
                                $postSource = json_decode($post->post_source);
                                $provider = $postSource->provider;
                                $embedId = $postSource->embed_id;
                            } else {
                                $provider = '';
                                $embedId = '';
                            }
                            @endphp
                            <div id="embed">
                                <div class="form-group">
                                    <label for="titlePost">{{ __('form.provider') }}</label>
                                    <select @if($post->post_type != 'video_embed') disabled @endif class="video_embed form-control" name="post_source[provider]">
                                        @if($provider == 'vimeo')
                                            <option value="youtube">{{ __('Youtube') }}</option>
                                            <option value="vimeo" selected>{{ __('Vimeo') }}</option>
                                        @else
                                            <option value="youtube" selected>{{ __('Youtube') }}</option>
                                            <option value="vimeo">{{ __('Vimeo') }}</option>
                                        @endif
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="titlePost">{{ __('form.embed_id') }}</label>
                                    <input @if($post->post_type != 'video_embed') disabled @endif type="text" name="post_source[embed_id]" class="video_embed form-control @error('post_source.embed_id') is-invalid @enderror" value="{{ old('post_source.embed_id') ?: $embedId }}" placeholder="mRlP799y8B8">
                                    @error('post_source.embed_id')
                                    <div class="invalid-feedback">
                                        {{ $message }} dd
                                    </div>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <!-- /.tab-pane -->
                    </div>
                    <!-- /.tab-content -->
                </div><!-- /.card-body -->
                </div>
                <div class="card card-default">
                    <div class="card-body">
                        <div class="form-group">
                            <label for="titlePost">{{ __('form.title') }}</label>
                            <input type="text" name="post_title" class="form-control @error('post_title') is-invalid @enderror"
                                   id="titlePost" placeholder="{{ __('form.placeholder_title') }}" value="{{ old('post_title') }}" required autofocus>
                            @error('post_title')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="summary">{{ __('form.summary') }}</label>
                            <textarea name="post_summary" class="form-control" rows="3" placeholder="{{ __('form.placeholder_summary') }}"
                                      id="summary">{{ old('post_summary') }}</textarea>
                        </div>
                        <div class="form-group">
                            <label for="">{{ __('form.content') }}</label>
                            <textarea name="post_content" placeholder="{{ __('form.placeholder_content') }}" style="width: 100%; height: 200px; font-weight:normal">{{ old('post_content') }}</textarea>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card card-default">
                    <div class="card-header">
                        <h3 class="card-title">{{ __('form.video_thumbnails') }}</h3>
                        <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                <i class="fas fa-minus"></i>
                            </button>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            @if(PostHelper::isImageUrlAvailable($post))
                                <input type="text" name="image_url" class="form-control @error('image_url') is-invalid @enderror"
                                    id="imageUrl" placeholder="{{ __('form.placeholder_image_url') }}" value="{{ old('image_url') }}">
                            @else
                                <div class="upload-photo mt-3 @if(!empty($post->post_image))ready @endif">
                                    <input id="upload" type="file" name="post_image" value="{{ __('form.choose_a_file') }}" accept="image/*" data-role="none" hidden>
                                    <input type="hidden" name="isimage">
                                    <div class="col-md-12">
                                        <div class="upload-msg">{{ __('form.placeholder_image') }}</div>
                                        <div id="display">
                                            <img id="image_preview_container" src="{{ $image }}" alt="{{ __('form.preview_image') }}"
                                                style="width: 100%;">
                                        </div>
                                    </div>
                                    <small class="form-text text-muted my-3">
                                        {{ __('form.help_upload_post_image') }}
                                    </small>
                                </div>
                            @endif
                        </div>
                    </div>
                </div>
                <div class="card card-default">
                    <div class="card-header">
                        <h3 class="card-title">{{ __('form.language') }}</h3>
                        <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                <i class="fas fa-minus"></i>
                            </button>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <img src="{{ asset('img/flags/4x3/'.strtolower($language->country_code).'.svg') }}" width="25">
                                    </span>
                                </div>
                                <input type="text" class="form-control" placeholder="" aria-label="" aria-describedby="basic-addon1" value="{{ $language->name }}" disabled>
                                <input type="hidden" name="post_language" value="{{ $language->id }}">
                                <input type="hidden" id="language_id" name="language_id" value="{{ $language->id }}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="">{{ __('form.translations') }}</label>
                            @foreach(\App\Helpers\LocalizationHelper::languageWithFlag() as $trans)
                                @if($trans->language != $language->language)
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <img src="{{ asset('img/flags/4x3/'.strtolower($trans->country_code).'.svg') }}" width="25">
                                            </span>
                                            @if(\App\Helpers\PostHelper::checkExistsTrans($trans->language, $post->translations->first()->value))
                                                <a class="btn btn-outline-secondary" href="{{ route('videos.edit', \App\Helpers\PostHelper::getTransPostId($trans->id, $post->translations->first()->value)) }}">
                                                    <i class="fa fa-pencil-alt"></i>
                                                </a>
                                            @else
                                                <a class="btn btn-outline-secondary" href="{{ route('videos.create.translate', ['id' => $post->id, 'lang' => $trans->language]) }}">
                                                    <i class="fa fa-plus"></i>
                                                </a>
                                            @endif
                                        </div>
                                        <input type="text" class="form-control" placeholder="" aria-label="" aria-describedby="basic-addon1" value="{{ \App\Helpers\PostHelper::showTransPostTitle($trans->id, $post->translations->first()->value) }}" disabled>
                                    </div>
                                @endif
                            @endforeach
                            <input type="hidden" name="trans_id" value="{{ $transId }}">
                        </div>
                    </div>
                </div>
                <div class="card card-default">
                    <div class="card-header">
                        <h3 class="card-title">{{ __('form.categories') }}</h3>
                        <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                <i class="fas fa-minus"></i>
                            </button>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="">{{ __('form.categories') }}</label>
                            <select id="categories" name="categories[]" class="select2" multiple="multiple"
                                    data-placeholder="{{ __('form.choose') }}" style="width: 100%;">
                                @if(old('categories'))
                                    @foreach(old('categories') as $oldCategory)
                                        <option value="{{ $oldCategory }}" selected>{{ \App\Helpers\TermHelper::getTermNameById($oldCategory) }}</option>
                                    @endforeach
                                @else 
                                    @foreach( $post->terms()->whereParent(0)->category()->get() as $category )
                                        <option value="{{ TermHelper::getIDTranslationBySlug($category, $language) }}" selected="selected">{{ TermHelper::getNameTranslationBySlug($category, $language) }}</option>
                                    @endforeach
                                @endif
                            </select>
                            <small class="form-text text-muted">
                                {{ __('form.help_category') }}
                            </small>
                        </div>
                        <div class="form-group">
                            <p>
                                <a class="" href="#collapseCategory" data-toggle="collapse" id="add_category" role="button" aria-expanded="false" aria-controls="collapseCategory">
                                    {{ __('button.add_new_category') }}
                                </a>
                            </p>
                        </div>
                        <div class="collapse @error('add_new_category')) show @enderror" id="collapseCategory">
                            <div class="form-group">
                                <input id="input-add-category" type="text" name="add_new_category" class="form-control @error('title') is-invalid @enderror" autofocus>
                                <div class="invalid-feedback msg-error-name-category"></div>
                            </div>
                            <div class="form-group">
                                <select id="parent" name="parent" class="select2" data-placeholder="{{ __('form.placeholder_select_parent') }}" style="width: 100%;"></select>
                            </div>
                            <button id="btn-submit-add-category" type="button" class="btn btn-info btn-sm float-right">{{ __('button.add_new_category') }}</button>
                        </div>
                    </div>
                </div>
                <div class="card card-default">
                    <div class="card-header">
                        <h3 class="card-title">{{ __('form.subcategories') }}</h3>
                        <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                <i class="fas fa-minus"></i>
                            </button>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <select id="subcategories" name="categories[]" class="select2" multiple="multiple"
                                    data-placeholder="{{ __('form.placeholder_subcategories') }}" style="width: 100%;">
                                @foreach( $post->terms()->subcategory()->get() as $subcategory )
                                    <option value="{{ TermHelper::getIDTranslationBySlug($subcategory, $language) }}" selected="selected">{{ TermHelper::getNameTranslationBySlug($subcategory, $language) }}</option>
                                @endforeach
                            </select>
                            <small class="form-text text-muted">
                                {{ __('form.help_subcategories') }}
                            </small>
                        </div>
                    </div>
                </div>
                <div class="card card-default">
                    <div class="card-header">
                        <h3 class="card-title">{{ __('form.tags') }}</h3>
                        <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                <i class="fas fa-minus"></i>
                            </button>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <input type="text" class="form-control" data-role="tagsinput" name="tags" placeholder="{{ __('form.placeholder_tags') }}" value="{{ old('tags') }}">
                            <small class="form-text text-muted">
                                {{ __('form.help_tag') }}
                            </small>
                        </div>
                    </div>
                </div>
                <div class="card card-default">
                    <div class="card-header">
                        <h3 class="card-title">{{ __('form.publish') }}</h3>
                        <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                <i class="fas fa-minus"></i>
                            </button>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="meta_description">{{ __('form.meta_description') }}</label>
                            <textarea id="meta_description" name="meta_description" class="form-control" rows="3"
                                      placeholder="{{ __('form.placeholder_meta_description') }}">{{ old('meta_description') }}</textarea>
                        </div>
                        <div class="form-group">
                            <label for="meta_keyword">{{ __('form.meta_keyword') }}</label>
                            <textarea id="meta_keyword" name="meta_keyword" class="form-control" rows="3"
                                      placeholder="{{ __('form.placeholder_meta_keyword') }}">{{ old('meta_keyword') }}</textarea>
                        </div>
                        <div class="form-group">
                            <label>{{ __('form.visibility') }}</label>
                            <select id="visibility" class="form-control" name="post_visibility">
                                @if(old('post_visibility') == "private")
                                    <option id="public" value="public">{{ __('form.public') }}</option>
                                    <option id="private" value="private" selected>{{ __('form.private') }}</option>
                                @else
                                    <option id="public" value="public" selected>{{ __('form.public') }}</option>
                                    <option id="private" value="private">{{ __('form.private') }}</option>
                                @endif
                            </select>
                            <small class="form-text text-muted visibility-msg">
                                {{ __('form.help_public_visibility') }}
                            </small>
                        </div>
                        <div class="form-group">
                            <input class="btn btn-primary" type="submit" name="publish" value="{{ __('button.publish') }}">
                            <input class="btn btn-secondary float-right" type="submit" name="draft" value="{{ __('button.save_draft') }}">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
@stop

@push('css')
    <link rel="stylesheet" href="{{ asset('vendor/pace-progress/themes/blue/pace-theme-minimal.css') }}">
    @include('admin.posts._style')
@endpush

@push('js')
    @include('layouts.partials._notification')
    @include('layouts.partials._switch_lang')
    @include('layouts.partials._csrf-token')
    <script>
        let lang = $("#language").val();
    </script>
    @include('admin.posts._script')
    <script>
        "use strict";

        $( "#linkMethod-tab" ).on( "click", function() {
            $('input[name=isimage]').val("false");
        } );

        $( "#uploadImageMethod-tab" ).on( "click", function() {
            $('input[name=isimage]').val("true");
        } );

        $( function() {
            const player = new Plyr('video', {
                ratio: '16:9',
            });
        });

        // UPLOAD IMAGE
        $(document).on('click', '.upload-msg', function() {
            $("#upload").trigger("click");
        });

        $('#reset').on("click", function() {
            $('#display').removeAttr('hidden');
            $('#reset').attr('hidden');
            $('.upload-photo').removeClass('ready result');
            $('#image_preview_container').attr('src', '#');
        });

        function readFile(input) {
            let reader = new FileReader();
            reader.onload = (e) => {
                $('.upload-photo').addClass('ready');
                $('#image_preview_container').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }

        $('#upload').on('change', function() {
            readFile(this);
        });

        // UPLOAD FILE

        FilePond.registerPlugin(FilePondPluginFileValidateType);

        FilePond.setOptions({
            credits: false,
            chunkUploads: true,
            server: {
                url: "{{ config('filepond.server.url') }}",
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                }
            }
        });

        @if (session('serverid'))
        FilePond.create(document.querySelector('#_upload_video'), {
            acceptedFileTypes: ['video/*'],
            files: [
                {
                    source: "{{ session('serverid') }}",
                    options: {
                        type: 'limbo',
                    },
                },
            ],
        });
        @else
        FilePond.create(document.querySelector('#_upload_video'), {
            acceptedFileTypes: ['video/*']
        });
        @endif
    </script>
@endpush

@section('footer')
    @include('layouts.partials._footer')
@stop
