package I6;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.blacksquircle.ui.language.base.model.ColorScheme;
import org.blacksquircle.ui.language.base.span.StyleSpan;
import org.blacksquircle.ui.language.base.span.SyntaxHighlightSpan;
import org.blacksquircle.ui.language.base.styler.LanguageStyler;

public class b implements LanguageStyler {

    public static final Pattern f8878a = Pattern.compile("</?([a-zA-Z_][\\w\\-:.]*)");

    public static final Pattern f8879b = Pattern.compile("([a-zA-Z_:][a-zA-Z0-9_:.-]*)\\s*=\\s*(\"[^\"]*\"|'[^']*')");

    public static final Pattern f8880c = Pattern.compile("<!--.*?-->", 32);

    public final boolean a(List<int[]> ranges, int pos) {
        boolean z10;
        Iterator<int[]> it = ranges.iterator();
        while (true) {
            z10 = false;
            if (!it.hasNext()) {
                break;
            }
            int[] next = it.next();
            if (pos >= next[0]) {
                z10 = true;
                if (pos < next[1]) {
                    break;
                }
            }
        }
        return z10;
    }

    @Override
    public List<SyntaxHighlightSpan> execute(String source, ColorScheme scheme) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        Matcher matcher = f8880c.matcher(source);
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        while (matcher.find()) {
            steppedArrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getCommentColor(), false, false, false, false), matcher.start(), matcher.end()));
            steppedArrayList2.add(new int[]{matcher.start(), matcher.end()});
        }
        Matcher matcher2 = f8878a.matcher(source);
        while (matcher2.find()) {
            if (!a(steppedArrayList2, matcher2.start())) {
                steppedArrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getKeywordColor(), false, false, false, false), matcher2.start(1), matcher2.end(1)));
            }
        }
        Matcher matcher3 = f8879b.matcher(source);
        while (matcher3.find()) {
            if (!a(steppedArrayList2, matcher3.start())) {
                steppedArrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getAttrNameColor(), false, false, false, false), matcher3.start(1), matcher3.end(1)));
                steppedArrayList.add(new SyntaxHighlightSpan(new StyleSpan(scheme.getStringColor(), false, false, false, false), matcher3.start(2), matcher3.end(2)));
                steppedArrayList2.add(new int[]{matcher3.start(2), matcher3.end(2)});
            }
        }
        return steppedArrayList;
    }
}
