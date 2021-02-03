---
title: "distil로 옮깁니다"
description: |
 드디어 블로그를 단순하게 유지하기 위해 distill로 옮깁니다.
base_url: https://mrchypark.github.io
date: "2021-01-28"
author:
  - first_name: "Chanyub"
    last_name: "Park"
    url: https://mrchypark.github.io/about
    affiliation: Forkonlp
    affiliation_url: https://forkonlp.github.io/
    orcid_id: 0000-0001-6474-2570
output:
  distill::distill_article:
    keep_md: true
    self_contained: true
    toc: true
    toc_depth: 2
    code_folding: false
    theme: theme.css
    number_sections: true
---



# blogdown의 대안을 찾아서

blogdown은 꽤 오랫동안 사용한 블로그 패키지다. 여전히 좋은 패키지라고 생각한다. blogdown 또한 [rstudio에서 관리](https://github.com/rstudio/blogdown)하며, 최근 [버전 1.0.0 을 출시](https://blog.rstudio.com/2021/01/18/blogdown-v1.0/)했다.

대안이 필요한 이유는 blogdown 자체의 문제만은 아니지만, 여전히 문제다.

1.  한글 윈도우 rstudio 에서 빌드시 경로 문제가 발생할 때가 있다.
2.  캐쉬 동작을 이해하지 못해서 빌드 결과가 다르다.
3.  rstudio가 글 작성 도구로써 매우 좋다고 할 수 없다.

rstudio가 글 작성 도구로써 매우 좋다고 할 수 없는 이유는, 우선 매우 무겁기 때문이다. 오죽하면 Rmd 전용 글 작성 도구만 따로 만들까 고민하던 적이 있기도 하다.(지금도 유효하다.)

# distill 소개

distill 은 rstudio 의 패키지로

<div class="layout-chunk" data-layout="l-body">
<div class="sourceCode"><pre class="sourceCode r"><code class="sourceCode r"><span class='kw'><a href='https://rdrr.io/r/base/library.html'>library</a></span><span class='op'>(</span><span class='st'><a href='https://dplyr.tidyverse.org'>"dplyr"</a></span><span class='op'>)</span>

<span class='va'>mtcars</span> <span class='op'>%&gt;%</span> 
  <span class='fu'><a href='https://tibble.tidyverse.org/reference/tibble.html'>tibble</a></span><span class='op'>(</span><span class='op'>)</span> <span class='op'>%&gt;%</span> 
  <span class='fu'><a href='https://dplyr.tidyverse.org/reference/filter.html'>filter</a></span><span class='op'>(</span><span class='va'>mpg</span> <span class='op'>&gt;</span><span class='fl'>20</span><span class='op'>)</span>
</code></pre></div>

```
# A tibble: 14 x 11
     mpg   cyl  disp    hp  drat    wt  qsec    vs    am  gear  carb
   <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
 1  21       6 160     110  3.9   2.62  16.5     0     1     4     4
 2  21       6 160     110  3.9   2.88  17.0     0     1     4     4
 3  22.8     4 108      93  3.85  2.32  18.6     1     1     4     1
 4  21.4     6 258     110  3.08  3.22  19.4     1     0     3     1
 5  24.4     4 147.     62  3.69  3.19  20       1     0     4     2
 6  22.8     4 141.     95  3.92  3.15  22.9     1     0     4     2
 7  32.4     4  78.7    66  4.08  2.2   19.5     1     1     4     1
 8  30.4     4  75.7    52  4.93  1.62  18.5     1     1     4     2
 9  33.9     4  71.1    65  4.22  1.84  19.9     1     1     4     1
10  21.5     4 120.     97  3.7   2.46  20.0     1     0     3     1
11  27.3     4  79      66  4.08  1.94  18.9     1     1     4     1
12  26       4 120.     91  4.43  2.14  16.7     0     1     5     2
13  30.4     4  95.1   113  3.77  1.51  16.9     1     1     5     2
14  21.4     4 121     109  4.11  2.78  18.6     1     1     4     2
```

<div class="sourceCode"><pre class="sourceCode r"><code class="sourceCode r"><span class='fu'><a href='https://rdrr.io/r/base/print.html'>print</a></span><span class='op'>(</span><span class='st'>"heloe"</span><span class='op'>)</span>
</code></pre></div>

```
[1] "heloe"
```

</div>

```{.r .distill-force-highlighting-css}
```
