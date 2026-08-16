package org.openjdk.source.util;

import java.util.List;
import org.openjdk.javax.lang.model.element.Name;
import org.openjdk.javax.tools.Diagnostic;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.source.doctree.AttributeTree;
import org.openjdk.source.doctree.AuthorTree;
import org.openjdk.source.doctree.CommentTree;
import org.openjdk.source.doctree.DeprecatedTree;
import org.openjdk.source.doctree.DocCommentTree;
import org.openjdk.source.doctree.DocRootTree;
import org.openjdk.source.doctree.DocTree;
import org.openjdk.source.doctree.EndElementTree;
import org.openjdk.source.doctree.EntityTree;
import org.openjdk.source.doctree.ErroneousTree;
import org.openjdk.source.doctree.HiddenTree;
import org.openjdk.source.doctree.IdentifierTree;
import org.openjdk.source.doctree.IndexTree;
import org.openjdk.source.doctree.InheritDocTree;
import org.openjdk.source.doctree.LinkTree;
import org.openjdk.source.doctree.LiteralTree;
import org.openjdk.source.doctree.ParamTree;
import org.openjdk.source.doctree.ProvidesTree;
import org.openjdk.source.doctree.ReferenceTree;
import org.openjdk.source.doctree.ReturnTree;
import org.openjdk.source.doctree.SeeTree;
import org.openjdk.source.doctree.SerialDataTree;
import org.openjdk.source.doctree.SerialFieldTree;
import org.openjdk.source.doctree.SerialTree;
import org.openjdk.source.doctree.SinceTree;
import org.openjdk.source.doctree.StartElementTree;
import org.openjdk.source.doctree.TextTree;
import org.openjdk.source.doctree.ThrowsTree;
import org.openjdk.source.doctree.UnknownBlockTagTree;
import org.openjdk.source.doctree.UnknownInlineTagTree;
import org.openjdk.source.doctree.UsesTree;
import org.openjdk.source.doctree.ValueTree;
import org.openjdk.source.doctree.VersionTree;

public interface DocTreeFactory {
    DocTreeFactory at(int i10);

    List<DocTree> getFirstSentence(List<? extends DocTree> list);

    AttributeTree newAttributeTree(Name name, AttributeTree.ValueKind valueKind, List<? extends DocTree> list);

    AuthorTree newAuthorTree(List<? extends DocTree> list);

    LiteralTree newCodeTree(TextTree textTree);

    CommentTree newCommentTree(String str);

    DeprecatedTree newDeprecatedTree(List<? extends DocTree> list);

    DocCommentTree newDocCommentTree(List<? extends DocTree> list, List<? extends DocTree> list2);

    DocRootTree newDocRootTree();

    EndElementTree newEndElementTree(Name name);

    EntityTree newEntityTree(Name name);

    ErroneousTree newErroneousTree(String str, Diagnostic<JavaFileObject> diagnostic);

    ThrowsTree newExceptionTree(ReferenceTree referenceTree, List<? extends DocTree> list);

    HiddenTree newHiddenTree(List<? extends DocTree> list);

    IdentifierTree newIdentifierTree(Name name);

    IndexTree newIndexTree(DocTree docTree, List<? extends DocTree> list);

    InheritDocTree newInheritDocTree();

    LinkTree newLinkPlainTree(ReferenceTree referenceTree, List<? extends DocTree> list);

    LinkTree newLinkTree(ReferenceTree referenceTree, List<? extends DocTree> list);

    LiteralTree newLiteralTree(TextTree textTree);

    ParamTree newParamTree(boolean z10, IdentifierTree identifierTree, List<? extends DocTree> list);

    ProvidesTree newProvidesTree(ReferenceTree referenceTree, List<? extends DocTree> list);

    ReferenceTree newReferenceTree(String str);

    ReturnTree newReturnTree(List<? extends DocTree> list);

    SeeTree newSeeTree(List<? extends DocTree> list);

    SerialDataTree newSerialDataTree(List<? extends DocTree> list);

    SerialFieldTree newSerialFieldTree(IdentifierTree identifierTree, ReferenceTree referenceTree, List<? extends DocTree> list);

    SerialTree newSerialTree(List<? extends DocTree> list);

    SinceTree newSinceTree(List<? extends DocTree> list);

    StartElementTree newStartElementTree(Name name, List<? extends DocTree> list, boolean z10);

    TextTree newTextTree(String str);

    ThrowsTree newThrowsTree(ReferenceTree referenceTree, List<? extends DocTree> list);

    UnknownBlockTagTree newUnknownBlockTagTree(Name name, List<? extends DocTree> list);

    UnknownInlineTagTree newUnknownInlineTagTree(Name name, List<? extends DocTree> list);

    UsesTree newUsesTree(ReferenceTree referenceTree, List<? extends DocTree> list);

    ValueTree newValueTree(ReferenceTree referenceTree);

    VersionTree newVersionTree(List<? extends DocTree> list);
}
