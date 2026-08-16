package org.bouncycastle.jce.provider;

import dk.InterfaceC12950f;
import fm.C13260d;
import hi.C13478B;
import hi.C13479C;
import hi.C13481E;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.security.cert.CertPathValidatorException;
import java.security.cert.Extension;
import java.security.cert.X509Certificate;
import java.text.ParseException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import oh.AbstractC14551y;
import oh.C14518h;
import oh.C14530n;
import oh.C14549x;
import oh.G0;

public class C14742x {

    public static final int f101845a = 15000;

    public static final int f101846b = 32768;

    public static Map<URI, WeakReference<Map<Vh.b, Vh.g>>> f101847c = Collections.synchronizedMap(new WeakHashMap());

    public static Vh.g a(Vh.b bVar, Hj.r rVar, URI uri, X509Certificate x509Certificate, List<Extension> list, InterfaceC12950f interfaceC12950f) throws CertPathValidatorException {
        Vh.g u10;
        Vh.g gVar;
        C14530n y10;
        WeakReference<Map<Vh.b, Vh.g>> weakReference = f101847c.get(uri);
        Map<Vh.b, Vh.g> map = weakReference != null ? weakReference.get() : null;
        if (map != null && (gVar = map.get(bVar)) != null) {
            oh.E A10 = Vh.l.u(Vh.a.v(AbstractC14551y.F(gVar.x().x()).H()).z()).A();
            for (int i10 = 0; i10 != A10.size(); i10++) {
                Vh.p w10 = Vh.p.w(A10.I(i10));
                if (bVar.equals(w10.u()) && (y10 = w10.y()) != null) {
                    try {
                    } catch (ParseException unused) {
                        map.remove(bVar);
                    }
                    if (rVar.e().after(y10.I())) {
                        map.remove(bVar);
                        gVar = null;
                    }
                }
            }
            if (gVar != null) {
                return gVar;
            }
        }
        try {
            URL url = uri.toURL();
            C14518h c14518h = new C14518h();
            c14518h.a(new Vh.i(bVar, null));
            C14518h c14518h2 = new C14518h();
            byte[] bArr = null;
            for (int i11 = 0; i11 != list.size(); i11++) {
                Extension extension = list.get(i11);
                byte[] value = extension.getValue();
                if (Vh.e.f27028c.J().equals(extension.getId())) {
                    bArr = value;
                }
                c14518h2.a(new C13478B(new C14549x(extension.getId()), extension.isCritical(), value));
            }
            try {
                byte[] encoded = new Vh.f(c14518h2.i() != 0 ? new Vh.q((C13481E) null, new G0(c14518h), C13479C.C(new G0(c14518h2))) : new Vh.q((C13481E) null, new G0(c14518h), (C13479C) null), null).getEncoded();
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                httpURLConnection.setConnectTimeout(15000);
                httpURLConnection.setReadTimeout(15000);
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setDoInput(true);
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setRequestProperty("Content-type", "application/ocsp-request");
                httpURLConnection.setRequestProperty("Content-length", String.valueOf(encoded.length));
                OutputStream outputStream = httpURLConnection.getOutputStream();
                outputStream.write(encoded);
                outputStream.flush();
                InputStream inputStream = httpURLConnection.getInputStream();
                int contentLength = httpURLConnection.getContentLength();
                if (contentLength < 0) {
                    contentLength = 32768;
                }
                u10 = Vh.g.u(C13260d.f(inputStream, contentLength));
            } catch (IOException e10) {
                e = e10;
            }
            try {
                if (u10.y().v() != 0) {
                    throw new CertPathValidatorException("OCSP responder failed: " + ((Object) u10.y().x()), null, rVar.a(), rVar.b());
                }
                Vh.k u11 = Vh.k.u(u10.x());
                if (!(u11.y().A(Vh.e.f27027b) ? L.p(Vh.a.v(u11.x().H()), rVar, bArr, x509Certificate, interfaceC12950f) : false)) {
                    throw new CertPathValidatorException("OCSP response failed to validate", null, rVar.a(), rVar.b());
                }
                WeakReference<Map<Vh.b, Vh.g>> weakReference2 = f101847c.get(uri);
                if (weakReference2 != null) {
                    map = weakReference2.get();
                }
                if (map != null) {
                    map.put(bVar, u10);
                } else {
                    HashMap hashMap = new HashMap();
                    hashMap.put(bVar, u10);
                    f101847c.put(uri, new WeakReference<>(hashMap));
                }
                return u10;
            } catch (IOException e11) {
                e = e11;
                throw new CertPathValidatorException("configuration error: " + e.getMessage(), e, rVar.a(), rVar.b());
            }
        } catch (MalformedURLException e12) {
            throw new CertPathValidatorException("configuration error: " + e12.getMessage(), e12, rVar.a(), rVar.b());
        }
    }
}
