.class public Li5/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/ITsMagic/Atlas/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li5/a;->n1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li5/a;


# direct methods
.method public constructor <init>(Li5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Li5/a$a;->a:Li5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIFLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "executed",
            "total",
            "progress",
            "tda"
        }
    .end annotation

    new-instance v6, Li5/a$a$b;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Li5/a$a$b;-><init>(Li5/a$a;IIFLjava/lang/String;)V

    invoke-static {v6}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "step"
        }
    .end annotation

    new-instance v0, Li5/a$a$a;

    invoke-direct {v0, p0, p1}, Li5/a$a$a;-><init>(Li5/a$a;Ljava/lang/String;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lub/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "outputVertex",
            "atlasTexture"
        }
    .end annotation

    new-instance v0, Li5/a$a$c;

    invoke-direct {v0, p0}, Li5/a$a$c;-><init>(Li5/a$a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    new-instance v0, Li5/a$a$d;

    invoke-direct {v0, p0, p1, p2}, Li5/a$a$d;-><init>(Li5/a$a;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lub/n;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
