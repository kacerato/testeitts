package org.apache.http.conn.scheme;

import java.io.IOException;
import java.net.Socket;
import java.net.UnknownHostException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/apache/http/conn/scheme/LayeredSocketFactory.class
 */
@Deprecated
public interface LayeredSocketFactory extends SocketFactory {
    Socket createSocket(Socket socket, String str, int i10, boolean z10) throws IOException, UnknownHostException;
}
