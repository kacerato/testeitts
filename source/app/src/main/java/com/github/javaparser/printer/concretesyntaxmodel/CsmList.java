package com.github.javaparser.printer.concretesyntaxmodel;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.printer.ConcreteSyntaxModel;
import com.github.javaparser.printer.SourcePrinter;
import java.util.Collection;
import java.util.Iterator;

public class CsmList implements CsmElement {
    private final CsmElement following;
    private final CsmElement preceeding;
    private final ObservableProperty property;
    private final CsmElement separatorPost;
    private final CsmElement separatorPre;

    public CsmList(ObservableProperty property, CsmElement separator) {
        this(property, new CsmNone(), separator, new CsmNone(), new CsmNone());
    }

    public CsmElement getFollowing() {
        return this.following;
    }

    public CsmElement getPreceeding() {
        return this.preceeding;
    }

    public ObservableProperty getProperty() {
        return this.property;
    }

    public CsmElement getSeparatorPost() {
        return this.separatorPost;
    }

    public CsmElement getSeparatorPre() {
        return this.separatorPre;
    }

    @Override
    public void prettyPrint(Node node, SourcePrinter printer) {
        CsmElement csmElement;
        CsmElement csmElement2;
        CsmElement csmElement3;
        CsmElement csmElement4;
        if (!this.property.isAboutNodes()) {
            Collection<?> valueAsCollection = this.property.getValueAsCollection(node);
            if (valueAsCollection == null) {
                return;
            }
            if (!valueAsCollection.isEmpty() && (csmElement2 = this.preceeding) != null) {
                csmElement2.prettyPrint(node, printer);
            }
            Iterator<?> it = valueAsCollection.iterator();
            while (it.hasNext()) {
                if (this.separatorPre != null && it.hasNext()) {
                    this.separatorPre.prettyPrint(node, printer);
                }
                printer.print(PrintingHelper.printToString(it.next()));
                if (this.separatorPost != null && it.hasNext()) {
                    this.separatorPost.prettyPrint(node, printer);
                }
            }
            if (valueAsCollection.isEmpty() || (csmElement = this.following) == null) {
                return;
            }
            csmElement.prettyPrint(node, printer);
            return;
        }
        NodeList<? extends Node> valueAsMultipleReference = this.property.getValueAsMultipleReference(node);
        if (valueAsMultipleReference == null) {
            return;
        }
        if (!valueAsMultipleReference.isEmpty() && (csmElement4 = this.preceeding) != null) {
            csmElement4.prettyPrint(node, printer);
        }
        for (int i10 = 0; i10 < valueAsMultipleReference.size(); i10++) {
            CsmElement csmElement5 = this.separatorPre;
            if (csmElement5 != null && i10 != 0) {
                csmElement5.prettyPrint(node, printer);
            }
            ConcreteSyntaxModel.genericPrettyPrint(valueAsMultipleReference.get(i10), printer);
            if (this.separatorPost != null && i10 != valueAsMultipleReference.size() - 1) {
                this.separatorPost.prettyPrint(node, printer);
            }
        }
        if (valueAsMultipleReference.isEmpty() || (csmElement3 = this.following) == null) {
            return;
        }
        csmElement3.prettyPrint(node, printer);
    }

    public String toString() {
        return String.format("%s(property:%s)", getClass().getSimpleName(), getProperty());
    }

    public CsmList(ObservableProperty property) {
        this(property, new CsmNone(), new CsmNone(), new CsmNone(), new CsmNone());
    }

    public CsmList(ObservableProperty property, CsmElement separatorPre, CsmElement separatorPost, CsmElement preceeding, CsmElement following) {
        this.property = property;
        this.separatorPre = separatorPre;
        this.separatorPost = separatorPost;
        this.preceeding = preceeding;
        this.following = following;
    }
}
