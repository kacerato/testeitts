package w3;

import android.provider.Telephony;
import com.android.aapt.Resources;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.OpenOption;

public final class C15907a {

    public static final String f126400a = "http://schemas.android.com/apk/res/android";

    public static final String f126401b = ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION";

    public static final String f126402c = ".androidx-startup";

    public static final class b {

        public final String f126403a;

        public final String f126404b;

        public final String f126405c;

        public boolean f126406d;

        public boolean f126407e;

        public b(String oldPackageId, String newPackageId, String newTitle) {
            this.f126403a = oldPackageId;
            this.f126404b = newPackageId;
            this.f126405c = newTitle;
        }
    }

    public static String a(Resources.XmlElement element, String namespaceUri, String attributeName) {
        for (Resources.XmlAttribute xmlAttribute : element.getAttributeList()) {
            if (namespaceUri.equals(xmlAttribute.getNamespaceUri()) && attributeName.equals(xmlAttribute.getName())) {
                return xmlAttribute.getValue();
            }
        }
        return null;
    }

    public static String b(String value) {
        if (value == null) {
            return null;
        }
        String trim = value.trim();
        if (trim.isEmpty()) {
            return null;
        }
        return trim;
    }

    public static String c(String title) {
        String b10 = b(title);
        if (b10 == null) {
            return null;
        }
        return b10.replaceAll("\\s+", " ");
    }

    public static void d(File manifestFile, String appTitle, String packageId) throws IOException {
        Files.write(manifestFile.toPath(), e(Files.readAllBytes(manifestFile.toPath()), appTitle, packageId), new OpenOption[0]);
    }

    public static byte[] e(byte[] manifestBytes, String appTitle, String packageId) throws IOException {
        String c10 = c(appTitle);
        String b10 = b(packageId);
        try {
            Resources.XmlNode parseFrom = Resources.XmlNode.parseFrom(manifestBytes);
            if (!parseFrom.hasElement() || !"manifest".equals(parseFrom.getElement().getName())) {
                throw new IOException("Missing manifest root element on protobuf AndroidManifest.xml");
            }
            String a10 = a(parseFrom.getElement(), "", Telephony.Sms.Intents.EXTRA_PACKAGE_NAME);
            if (b10 != null && (a10 == null || a10.isEmpty())) {
                throw new IOException("Unable to locate package id on protobuf AndroidManifest.xml");
            }
            b bVar = new b(a10, b10, c10);
            Resources.XmlNode g10 = g(parseFrom, bVar);
            if (b10 != null && !bVar.f126406d) {
            return g10.toByteArray();
        } catch (Exception e10) {
            throw new IOException("Invalid protobuf AndroidManifest.xml", e10);
        }
    }

    public static Resources.XmlAttribute f(String elementName, Resources.XmlAttribute attribute, b state) {
        if (state.f126404b != null && "manifest".equals(elementName) && attribute.getNamespaceUri().isEmpty() && Telephony.Sms.Intents.EXTRA_PACKAGE_NAME.equals(attribute.getName())) {
            state.f126406d = true;
            return h(attribute, state.f126404b, false);
        }
        if (state.f126405c != null && F2.i.f6413l.equals(elementName) && "http://schemas.android.com/apk/res/android".equals(attribute.getNamespaceUri()) && "label".equals(attribute.getName())) {
            state.f126407e = true;
            return h(attribute, state.f126405c, true);
        }
        if (state.f126404b != null && state.f126403a != null) {
            String value = attribute.getValue();
            if ((state.f126403a + ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION").equals(value)) {
                return h(attribute, state.f126404b + ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION", false);
            }
            if ((state.f126403a + ".androidx-startup").equals(value)) {
                return h(attribute, state.f126404b + ".androidx-startup", false);
            }
        }
        return attribute;
    }

    public static Resources.XmlNode g(Resources.XmlNode node, b state) {
        if (!node.hasElement()) {
            return node;
        }
        Resources.XmlElement element = node.getElement();
        Resources.XmlElement.Builder builder = element.toBuilder();
        for (int i10 = 0; i10 < element.getAttributeCount(); i10++) {
            Resources.XmlAttribute attribute = element.getAttribute(i10);
            Resources.XmlAttribute f10 = f(element.getName(), attribute, state);
            if (f10 != attribute) {
                builder.setAttribute(i10, f10);
            }
        }
        for (int i11 = 0; i11 < element.getChildCount(); i11++) {
            Resources.XmlNode child = element.getChild(i11);
            Resources.XmlNode g10 = g(child, state);
            if (g10 != child) {
                builder.setChild(i11, g10);
            }
        }
        return node.toBuilder().setElement(builder).build();
    }

    public static Resources.XmlAttribute h(Resources.XmlAttribute attribute, String value, boolean compileLiteral) {
        Resources.XmlAttribute.Builder value2 = attribute.toBuilder().setValue(value);
        if (compileLiteral) {
            value2.setCompiledItem(Resources.Item.newBuilder().setStr(Resources.String.newBuilder().setValue(value)).build());
        } else if (attribute.hasCompiledItem()) {
            value2.clearCompiledItem();
        }
        return value2.build();
    }
}
