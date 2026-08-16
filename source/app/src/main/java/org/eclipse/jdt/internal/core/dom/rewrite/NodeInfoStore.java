package org.eclipse.jdt.internal.core.dom.rewrite;

import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Set;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.Block;
import org.eclipse.jdt.core.dom.FieldDeclaration;
import org.eclipse.jdt.core.dom.Modifier;
import org.eclipse.jdt.core.dom.ParameterizedType;
import org.eclipse.jdt.core.dom.TryStatement;
import org.eclipse.jdt.core.dom.VariableDeclarationExpression;
import org.eclipse.jdt.core.dom.VariableDeclarationStatement;
import org.eclipse.jdt.internal.core.dom.rewrite.RewriteEventStore;

public final class NodeInfoStore {
    private AST ast;
    private Map placeholderNodes = null;
    private Set collapsedNodes = null;

    public static final class CopyPlaceholderData extends PlaceholderData {
        public RewriteEventStore.CopySourceInfo copySource;

        public String toString() {
            return "[placeholder " + ((Object) this.copySource) + "]";
        }
    }

    public static class PlaceholderData {
    }

    public static final class StringPlaceholderData extends PlaceholderData {
        public String code;

        public String toString() {
            return "[placeholder string: " + this.code + "]";
        }
    }

    public NodeInfoStore(AST ast) {
        this.ast = ast;
    }

    private void setPlaceholderData(ASTNode aSTNode, PlaceholderData placeholderData) {
        if (this.placeholderNodes == null) {
            this.placeholderNodes = new IdentityHashMap();
        }
        this.placeholderNodes.put(aSTNode, placeholderData);
    }

    public void clear() {
        this.placeholderNodes = null;
        this.collapsedNodes = null;
    }

    public Block createCollapsePlaceholder() {
        Block newBlock = this.ast.newBlock();
        if (this.collapsedNodes == null) {
            this.collapsedNodes = new HashSet();
        }
        this.collapsedNodes.add(newBlock);
        return newBlock;
    }

    public Object getPlaceholderData(ASTNode aSTNode) {
        Map map = this.placeholderNodes;
        if (map != null) {
            return map.get(aSTNode);
        }
        return null;
    }

    public boolean isCollapsed(ASTNode aSTNode) {
        Set set = this.collapsedNodes;
        if (set != null) {
            return set.contains(aSTNode);
        }
        return false;
    }

    public final void markAsCopyTarget(ASTNode aSTNode, RewriteEventStore.CopySourceInfo copySourceInfo) {
        CopyPlaceholderData copyPlaceholderData = new CopyPlaceholderData();
        copyPlaceholderData.copySource = copySourceInfo;
        setPlaceholderData(aSTNode, copyPlaceholderData);
    }

    public final void markAsStringPlaceholder(ASTNode aSTNode, String str) {
        StringPlaceholderData stringPlaceholderData = new StringPlaceholderData();
        stringPlaceholderData.code = str;
        setPlaceholderData(aSTNode, stringPlaceholderData);
    }

    public final ASTNode newPlaceholderNode(int i10) {
        try {
            ASTNode createInstance = this.ast.createInstance(i10);
            int nodeType = createInstance.getNodeType();
            if (nodeType == 23) {
                ((FieldDeclaration) createInstance).fragments().add(this.ast.newVariableDeclarationFragment());
            } else if (nodeType == 54) {
                ((TryStatement) createInstance).setFinally(this.ast.newBlock());
            } else if (nodeType == 58) {
                ((VariableDeclarationExpression) createInstance).fragments().add(this.ast.newVariableDeclarationFragment());
            } else if (nodeType == 60) {
                ((VariableDeclarationStatement) createInstance).fragments().add(this.ast.newVariableDeclarationFragment());
            } else if (nodeType == 74) {
                ((ParameterizedType) createInstance).typeArguments().add(this.ast.newWildcardType());
            } else if (nodeType == 83) {
                ((Modifier) createInstance).setKeyword(Modifier.ModifierKeyword.ABSTRACT_KEYWORD);
            }
            return createInstance;
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }
}
