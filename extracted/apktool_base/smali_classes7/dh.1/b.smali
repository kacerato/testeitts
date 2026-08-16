.class public final synthetic Ldh/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;IILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldh/b;->b:Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;

    iput p2, p0, Ldh/b;->c:I

    iput p3, p0, Ldh/b;->d:I

    iput-object p4, p0, Ldh/b;->e:Ljava/lang/String;

    iput p5, p0, Ldh/b;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Ldh/b;->b:Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;

    iget v1, p0, Ldh/b;->c:I

    iget v2, p0, Ldh/b;->d:I

    iget-object v3, p0, Ldh/b;->e:Ljava/lang/String;

    iget v4, p0, Ldh/b;->f:I

    invoke-static {v0, v1, v2, v3, v4}, Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->a(Lorg/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;IILjava/lang/String;I)V

    return-void
.end method
