.class public Lfd/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfd/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfd/d;->h(Lfd/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lfd/b$a;

.field public final synthetic c:Lfd/d;


# direct methods
.method public constructor <init>(Lfd/d;Lfd/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lfd/d$a;->c:Lfd/d;

    iput-object p2, p0, Lfd/d$a;->b:Lfd/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lfd/d$a;->a:I

    return-void
.end method


# virtual methods
.method public a(JJD)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "count",
            "max",
            "percent"
        }
    .end annotation

    double-to-int v0, p5

    iget-object v1, p0, Lfd/d$a;->b:Lfd/b$a;

    if-eqz v1, :cond_0

    iget v2, p0, Lfd/d$a;->a:I

    if-eq v0, v2, :cond_0

    iput v0, p0, Lfd/d$a;->a:I

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lfd/b$a;->a(JJD)V

    :cond_0
    return-void
.end method
