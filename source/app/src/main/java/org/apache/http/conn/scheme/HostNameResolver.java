package org.apache.http.conn.scheme;

import java.io.IOException;
import java.net.InetAddress;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/apache/http/conn/scheme/HostNameResolver.class
 */
@Deprecated
public interface HostNameResolver {
    InetAddress resolve(String str) throws IOException;
}
