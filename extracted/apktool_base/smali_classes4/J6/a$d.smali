.class public LJ6/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF6/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJ6/a;->v1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LJ6/a;


# direct methods
.method public constructor <init>(LJ6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LJ6/a$d;->a:LJ6/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    return-void
.end method

.method public b(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    return-void
.end method

.method public c()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1

    iget-object v0, p0, LJ6/a$d;->a:LJ6/a;

    invoke-virtual {v0}, LJ6/a;->u1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, LJ6/a$d;->a:LJ6/a;

    invoke-static {v0}, LJ6/a;->q1(LJ6/a;)Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;
    .locals 1

    iget-object v0, p0, LJ6/a$d;->a:LJ6/a;

    invoke-virtual {v0}, LJ6/a;->t1()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, LJ6/a$d;->a:LJ6/a;

    invoke-static {v0}, LJ6/a;->q1(LJ6/a;)Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJ6/a$d;->a:LJ6/a;

    invoke-static {v0}, LJ6/a;->s1(LJ6/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJ6/a$d;->a:LJ6/a;

    invoke-static {v0}, LJ6/a;->q1(LJ6/a;)Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
