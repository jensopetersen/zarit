xquery version "1.0";

import module namespace tei-to-html="http://exist-db.org/xquery/app/tei2html" at "tei2html.xql";

let $id := request:get-parameter("id", ())
for $div in collection("/db/shaketrain")/id($id)
return
    <div class="play">
    { tei-to-html:render($div) }
    </div>