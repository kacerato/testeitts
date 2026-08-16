package org.openjdk.source.doctree;

import com.google.firebase.analytics.FirebaseAnalytics;

public interface DocTree {
    <R, D> R accept(DocTreeVisitor<R, D> docTreeVisitor, D d10);

    Kind getKind();

    public enum Kind {
        ATTRIBUTE,
        AUTHOR("author"),
        CODE("code"),
        COMMENT,
        DEPRECATED("deprecated"),
        DOC_COMMENT,
        DOC_ROOT("docRoot"),
        END_ELEMENT,
        ENTITY,
        ERRONEOUS,
        EXCEPTION("exception"),
        HIDDEN("hidden"),
        IDENTIFIER,
        INDEX(FirebaseAnalytics.d.f67690b0),
        INHERIT_DOC("inheritDoc"),
        LINK("link"),
        LINK_PLAIN("linkplain"),
        LITERAL("literal"),
        PARAM("param"),
        PROVIDES("provides"),
        REFERENCE,
        RETURN("return"),
        SEE("see"),
        SERIAL("serial"),
        SERIAL_DATA("serialData"),
        SERIAL_FIELD("serialField"),
        SINCE("since"),
        START_ELEMENT,
        TEXT,
        THROWS("throws"),
        UNKNOWN_BLOCK_TAG,
        UNKNOWN_INLINE_TAG,
        USES("uses"),
        VALUE("value"),
        VERSION("version"),
        OTHER;

        public final String tagName;

        Kind() {
            this.tagName = null;
        }

        Kind(String str) {
            this.tagName = str;
        }
    }
}
