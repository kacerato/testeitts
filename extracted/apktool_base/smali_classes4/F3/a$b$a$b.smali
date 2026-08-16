.class public LF3/a$b$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LF3/a$b$a;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LF3/a$b$a;


# direct methods
.method public constructor <init>(LF3/a$b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LF3/a$b$a$b;->a:LF3/a$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, LF3/a$b$a$b;->a:LF3/a$b$a;

    iget-object p1, p1, LF3/a$b$a;->b:LF3/b;

    iget-object p1, p1, LF3/b;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->g:Z

    return-void
.end method
