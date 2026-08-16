package B7;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;

public class a {
    public static String a(String url, Map<String, String> params) {
        if (params == null || params.isEmpty()) {
            return url;
        }
        try {
            StringBuilder sb2 = new StringBuilder(url);
            sb2.append("?");
            boolean z10 = true;
            for (Map.Entry<String, String> entry : params.entrySet()) {
                if (!z10) {
                    sb2.append("&");
                }
                String encode = URLEncoder.encode(entry.getKey(), "UTF-8");
                String encode2 = entry.getValue() != null ? URLEncoder.encode(entry.getValue(), "UTF-8") : "";
                sb2.append(encode);
                sb2.append("=");
                sb2.append(encode2);
                z10 = false;
            }
            return sb2.toString();
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException("Erro ao codificar par\u00e2metros da URL", e10);
        }
    }
}
