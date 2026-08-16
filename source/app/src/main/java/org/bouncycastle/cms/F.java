package org.bouncycastle.cms;

import java.io.IOException;
import java.io.OutputStream;

public interface F {
    void b(OutputStream outputStream) throws IOException, CMSException;

    Object getContent();
}
