package org.apache.commons.lang3.text.translate;

import java.io.IOException;
import java.io.Writer;

@Deprecated
public class UnicodeUnpairedSurrogateRemover extends CodePointTranslator {
    @Override
    public boolean translate(int i10, Writer writer) throws IOException {
        return i10 >= 55296 && i10 <= 57343;
    }
}
