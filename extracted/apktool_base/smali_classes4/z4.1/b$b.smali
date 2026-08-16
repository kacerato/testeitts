.class public Lz4/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz4/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz4/b;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz4/b;


# direct methods
.method public constructor <init>(Lz4/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lz4/b$b;->a:Lz4/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LA4/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-object v0, p0, Lz4/b$b;->a:Lz4/b;

    invoke-static {v0}, Lz4/b;->p1(Lz4/b;)Lz4/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz4/a;->o(LA4/c;)Z

    return-void
.end method
