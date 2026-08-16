package javax.xml.transform.dom;

import javax.xml.transform.SourceLocator;
import org.w3c.dom.Node;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/xml/transform/dom/DOMLocator.class
 */
public interface DOMLocator extends SourceLocator {
    Node getOriginatingNode();
}
