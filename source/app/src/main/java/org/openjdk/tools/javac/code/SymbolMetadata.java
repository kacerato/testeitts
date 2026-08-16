package org.openjdk.tools.javac.code;

import java.util.Iterator;
import org.openjdk.tools.javac.code.Attribute;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;

public class SymbolMetadata {
    private final Symbol sym;
    private static final List<Attribute.Compound> DECL_NOT_STARTED = List.of(null);
    private static final List<Attribute.Compound> DECL_IN_PROGRESS = List.of(null);
    private List<Attribute.Compound> attributes = DECL_NOT_STARTED;
    private List<Attribute.TypeCompound> type_attributes = List.nil();
    private List<Attribute.TypeCompound> init_type_attributes = List.nil();
    private List<Attribute.TypeCompound> clinit_type_attributes = List.nil();

    public SymbolMetadata(Symbol symbol) {
        this.sym = symbol;
    }

    private List<Attribute.Compound> filterDeclSentinels(List<Attribute.Compound> list) {
        return (list == DECL_IN_PROGRESS || list == DECL_NOT_STARTED) ? List.nil() : list;
    }

    private boolean isStarted() {
        return this.attributes != DECL_NOT_STARTED;
    }

    public SymbolMetadata append(List<Attribute.Compound> list) {
        this.attributes = filterDeclSentinels(this.attributes);
        if (!list.isEmpty()) {
            if (this.attributes.isEmpty()) {
                this.attributes = list;
            } else {
                this.attributes = this.attributes.appendList(list);
            }
        }
        return this;
    }

    public SymbolMetadata appendClassInitTypeAttributes(List<Attribute.TypeCompound> list) {
        if (!list.isEmpty()) {
            if (this.clinit_type_attributes.isEmpty()) {
                this.clinit_type_attributes = list;
            } else {
                this.clinit_type_attributes = this.clinit_type_attributes.appendList(list);
            }
        }
        return this;
    }

    public SymbolMetadata appendInitTypeAttributes(List<Attribute.TypeCompound> list) {
        if (!list.isEmpty()) {
            if (this.init_type_attributes.isEmpty()) {
                this.init_type_attributes = list;
            } else {
                this.init_type_attributes = this.init_type_attributes.appendList(list);
            }
        }
        return this;
    }

    public SymbolMetadata appendUniqueTypes(List<Attribute.TypeCompound> list) {
        if (!list.isEmpty()) {
            if (this.type_attributes.isEmpty()) {
                this.type_attributes = list;
            } else {
                Iterator<Attribute.TypeCompound> it = list.iterator();
                while (it.hasNext()) {
                    Attribute.TypeCompound next = it.next();
                    if (!this.type_attributes.contains(next)) {
                        this.type_attributes = this.type_attributes.append(next);
                    }
                }
            }
        }
        return this;
    }

    public List<Attribute.TypeCompound> getClassInitTypeAttributes() {
        return this.clinit_type_attributes;
    }

    public List<Attribute.Compound> getDeclarationAttributes() {
        return filterDeclSentinels(this.attributes);
    }

    public List<Attribute.TypeCompound> getInitTypeAttributes() {
        return this.init_type_attributes;
    }

    public List<Attribute.TypeCompound> getTypeAttributes() {
        return this.type_attributes;
    }

    public boolean isEmpty() {
        return !isStarted() || pendingCompletion() || this.attributes.isEmpty();
    }

    public boolean isTypesEmpty() {
        return this.type_attributes.isEmpty();
    }

    public boolean pendingCompletion() {
        return this.attributes == DECL_IN_PROGRESS;
    }

    public SymbolMetadata prepend(List<Attribute.Compound> list) {
        this.attributes = filterDeclSentinels(this.attributes);
        if (!list.isEmpty()) {
            if (this.attributes.isEmpty()) {
                this.attributes = list;
            } else {
                this.attributes = this.attributes.prependList(list);
            }
        }
        return this;
    }

    public SymbolMetadata reset() {
        this.attributes = DECL_IN_PROGRESS;
        return this;
    }

    public void setAttributes(SymbolMetadata symbolMetadata) {
        symbolMetadata.getClass();
        setDeclarationAttributes(symbolMetadata.getDeclarationAttributes());
        if ((this.sym.flags() & 2147483648L) != 0) {
            Assert.check(symbolMetadata.sym.kind == Kinds.Kind.MTH);
            ListBuffer listBuffer = new ListBuffer();
            Iterator<Attribute.TypeCompound> it = symbolMetadata.getTypeAttributes().iterator();
            while (it.hasNext()) {
                Attribute.TypeCompound next = it.next();
                if (!next.position.type.isLocal()) {
                    listBuffer.append(next);
                }
            }
            setTypeAttributes(listBuffer.toList());
        } else {
            setTypeAttributes(symbolMetadata.getTypeAttributes());
        }
        if (this.sym.kind == Kinds.Kind.TYP) {
            setInitTypeAttributes(symbolMetadata.getInitTypeAttributes());
            setClassInitTypeAttributes(symbolMetadata.getClassInitTypeAttributes());
        }
    }

    public void setClassInitTypeAttributes(List<Attribute.TypeCompound> list) {
        list.getClass();
        this.clinit_type_attributes = list;
    }

    public void setDeclarationAttributes(List<Attribute.Compound> list) {
        Assert.check(pendingCompletion() || !isStarted());
        list.getClass();
        this.attributes = list;
    }

    public void setInitTypeAttributes(List<Attribute.TypeCompound> list) {
        list.getClass();
        this.init_type_attributes = list;
    }

    public void setTypeAttributes(List<Attribute.TypeCompound> list) {
        list.getClass();
        this.type_attributes = list;
    }
}
