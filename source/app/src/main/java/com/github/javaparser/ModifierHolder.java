package com.github.javaparser;

import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.utils.Utils;

class ModifierHolder {
    final NodeList<AnnotationExpr> annotations;
    final JavaToken begin;
    final NodeList<Modifier> modifiers;

    public ModifierHolder(JavaToken begin, NodeList<Modifier> modifiers, NodeList<AnnotationExpr> annotations) {
        this.begin = begin;
        this.modifiers = (NodeList) Utils.assertNotNull(modifiers);
        this.annotations = annotations;
    }
}
