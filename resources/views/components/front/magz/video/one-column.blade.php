@inject('videoHelper', 'App\Helpers\VideoHelper')
@inject('termHelper', 'App\Helpers\TermHelper')
@php $posts->each(function ($posts) {$posts->load('categories'); }); @endphp

@if($widgetData['title'] && Arr::exists($widgetData['title'], LaravelLocalization::getCurrentLocale()))
    <div class="line top">
        <div>{{ $widgetData['title'][LaravelLocalization::getCurrentLocale()] }}</div>
    </div>
@endif
@if($posts->isNotEmpty())
<div class="row">
    @foreach ($posts as $post)
        <article class="col-lg-12 article-list">
            <div class="inner">
                <figure>
                    <a href="{{ $videoHelper->getUriPost($post) }}" aria-label="read more">
                        <img src="{{ $videoHelper->showThumbnail($post, 300) }}"
                             alt="{{ $post->post_image }}">
                        <div class="link-icon"><i class="fas fa-play"></i></div>
                    </a>
                </figure>
                <div class="details">
                    <div class="detail">
                        @if($post->categories->first() AND $post->categories->first()->name)
                            <div class="category">
                                <a href="{{ route('category.show', $post->categories->first()->slug) }}">
                                {{ $post->categories->first()->name }}
                                </a>
                            </div>
                        @endif
                        <div class="time">{{ $post->created_at->locale(LaravelLocalization::getCurrentLocale())->isoFormat('LL') }}</div>
                        <div class="view">{{ $post->post_hits }} {{ __('Laramagz::magz.views') }} &nbsp; {{ $post->like }} {{ __('Laramagz::magz.likes') }}</div>
                    </div>
                    <h1><a href="{{ $videoHelper->getUriPost($post) }}">{{ $post->post_title }}</a></h1>
                    <p>
                        {!! \Str::limit(strip_tags($post->post_content), 150) !!}
                    </p>
                </div>
            </div>
        </article>
    @endforeach
</div>
@endif
