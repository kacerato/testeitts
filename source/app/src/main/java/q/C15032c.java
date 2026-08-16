package q;

import android.widget.MultiAutoCompleteTextView;

public class C15032c implements MultiAutoCompleteTextView.Tokenizer {
    @Override
    public int findTokenEnd(CharSequence charSequence, int i10) {
        return charSequence.length();
    }

    @Override
    public int findTokenStart(CharSequence charSequence, int i10) {
        String substring = charSequence.toString().substring(0, i10);
        int max = Math.max(0, Math.max(substring.lastIndexOf(" "), Math.max(substring.lastIndexOf("\n"), substring.lastIndexOf("("))));
        if (max == 0) {
            return 0;
        }
        int i11 = max + 1;
        return i11 < charSequence.length() ? i11 : max;
    }

    @Override
    public CharSequence terminateToken(CharSequence charSequence) {
        return charSequence;
    }
}
