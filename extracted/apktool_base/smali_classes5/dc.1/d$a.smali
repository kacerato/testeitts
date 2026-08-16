.class public Ldc/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ldc/d;


# direct methods
.method public constructor <init>(Ldc/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ldc/d$a;->a:Ldc/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ldc/d$a;->a:Ldc/d;

    invoke-static {v0}, Ldc/d;->o(Ldc/d;)V

    return-void
.end method

.method public getVariance()Lec/i;
    .locals 1

    iget-object v0, p0, Ldc/d$a;->a:Ldc/d;

    invoke-virtual {v0}, Ldc/d;->t()Lec/i;

    move-result-object v0

    return-object v0
.end method
