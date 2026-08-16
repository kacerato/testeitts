package org.luaj.vm2.server;

import java.io.InputStream;
import java.io.Reader;

public interface Launcher {
    Object[] launch(InputStream inputStream, Object[] objArr);

    Object[] launch(Reader reader, Object[] objArr);

    Object[] launch(String str, Object[] objArr);
}
