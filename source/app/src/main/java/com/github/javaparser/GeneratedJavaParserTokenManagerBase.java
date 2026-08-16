package com.github.javaparser;

import com.github.javaparser.ast.comments.BlockComment;
import com.github.javaparser.ast.comments.Comment;
import com.github.javaparser.ast.comments.JavadocComment;
import com.github.javaparser.ast.comments.LineComment;

abstract class GeneratedJavaParserTokenManagerBase {
    public static Comment createCommentFromToken(Token token) {
        String str = token.image;
        int i10 = token.kind;
        if (i10 == 8) {
            return new JavadocComment(tokenRange(token), str.substring(3, str.length() - 2));
        }
        if (i10 == 9) {
            return new BlockComment(tokenRange(token), str.substring(2, str.length() - 2));
        }
        if (i10 == 5) {
            return new LineComment(tokenRange(token), str.substring(2));
        }
        throw new AssertionError((Object) "Unexpectedly got passed a non-comment token.");
    }

    private static TokenRange tokenRange(Token token) {
        JavaToken javaToken = token.javaToken;
        return new TokenRange(javaToken, javaToken);
    }
}
