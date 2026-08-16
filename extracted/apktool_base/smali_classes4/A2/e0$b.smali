.class public LA2/e0$b;
.super LA2/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LA2/e0;->h(LA2/d0;)LA2/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LA2/e0<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:LA2/d0;


# direct methods
.method public constructor <init>(LA2/d0;LA2/d0;)V
    .locals 0

    iput-object p2, p0, LA2/e0$b;->b:LA2/d0;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, LA2/e0;-><init>(LA2/d0;LA2/e0$a;)V

    return-void
.end method


# virtual methods
.method public i()LA2/e0$g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/e0$g<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/e0$b;->b:LA2/d0;

    invoke-static {v0}, LA2/e0$g;->c(LA2/d0;)LA2/e0$g;

    move-result-object v0

    return-object v0
.end method
