.class Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$SavedState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# instance fields
.field final assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

.field final parserCursorLocation:I

.field final scannerCursorLocation:I


# direct methods
.method public constructor <init>(IILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$SavedState;->parserCursorLocation:I

    iput p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$SavedState;->scannerCursorLocation:I

    iput-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser$SavedState;->assistNodeParent:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    return-void
.end method
