package com.ardor3d.util.resource;

import Ng.e;
import android.content.ContentResolver;
import com.ardor3d.util.UrlUtils;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;
import java.util.logging.Level;
import java.util.logging.Logger;

public class URLResourceSource implements ResourceSource {
    static final boolean $assertionsDisabled = false;
    private static final Logger logger = Logger.getLogger(URLResourceSource.class.getName());
    private String _type;
    private URL _url;

    public URLResourceSource() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof URLResourceSource)) {
            return false;
        }
        URLResourceSource uRLResourceSource = (URLResourceSource) obj;
        String str = this._type;
        if (str == null) {
            if (uRLResourceSource._type != null) {
                return false;
            }
        } else if (!str.equals(uRLResourceSource._type)) {
            return false;
        }
        URL url = this._url;
        if (url == null) {
            if (uRLResourceSource._url != null) {
                return false;
            }
        } else if (!url.toString().equals(uRLResourceSource._url.toString())) {
            return false;
        }
        return true;
    }

    @Override
    public Class<?> getClassTag() {
        return URLResourceSource.class;
    }

    @Override
    public String getName() {
        return this._url.toString();
    }

    @Override
    public ResourceSource getRelativeSource(String str) {
        try {
            URL resolveRelativeURL = UrlUtils.resolveRelativeURL(this._url, "./" + str);
            if (resolveRelativeURL != null) {
                resolveRelativeURL.openStream().close();
                return new URLResourceSource(resolveRelativeURL);
            }
        } catch (MalformedURLException | IOException unused) {
        }
        Logger logger2 = logger;
        Level level = Level.WARNING;
        if (!logger2.isLoggable(level)) {
            return null;
        }
        logger2.logp(level, getClass().getName(), "getRelativeSource(String)", "Unable to find relative file {0} from {1}.", new Object[]{str, this._url});
        return null;
    }

    @Override
    public String getType() {
        return this._type;
    }

    public URL getURL() {
        return this._url;
    }

    public int hashCode() {
        String str = this._type;
        int hashCode = ((str == null ? 0 : str.hashCode()) + 31) * 31;
        URL url = this._url;
        return hashCode + (url != null ? url.toString().hashCode() : 0);
    }

    @Override
    public InputStream openStream() throws IOException {
        return this._url.openStream();
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        String readString = inputCapsule.readString("protocol", null);
        String readString2 = inputCapsule.readString(e.f16228h, null);
        String readString3 = inputCapsule.readString(ContentResolver.SCHEME_FILE, null);
        if (readString3 != null) {
            ResourceSource locateResource = ResourceLocatorTool.locateResource(ResourceLocatorTool.TYPE_TEXTURE, URLDecoder.decode(readString3, "UTF-8"));
            if (locateResource instanceof URLResourceSource) {
                URLResourceSource uRLResourceSource = (URLResourceSource) locateResource;
                this._url = uRLResourceSource._url;
                this._type = uRLResourceSource._type;
                return;
            }
        }
        if (this._url == null && readString != null && readString2 != null && readString3 != null) {
            this._url = new URL(readString, readString2, readString3);
        }
        this._type = inputCapsule.readString("type", null);
    }

    public void setType(String str) {
        this._type = str;
    }

    public void setURL(URL url) {
        this._url = url;
    }

    public String toString() {
        return "URLResourceSource [url=" + ((Object) this._url) + ", type=" + this._type + "]";
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        outputCapsule.write(this._url.getProtocol(), "protocol", (String) null);
        outputCapsule.write(this._url.getHost(), e.f16228h, (String) null);
        outputCapsule.write(this._url.getFile(), ContentResolver.SCHEME_FILE, (String) null);
        outputCapsule.write(this._type, "type", (String) null);
    }

    public URLResourceSource(URL url) {
        this._url = url;
        String file = url.getFile();
        if (file != null) {
            int lastIndexOf = file.lastIndexOf(46);
            if (lastIndexOf >= 0) {
                this._type = file.substring(lastIndexOf);
            } else {
                this._type = ResourceSource.UNKNOWN_TYPE;
            }
        }
    }

    public URLResourceSource(URL url, String str) {
        this._url = url;
        this._type = str;
    }
}
