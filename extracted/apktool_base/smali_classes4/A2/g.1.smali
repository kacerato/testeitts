.class public abstract LA2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LA2/t;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public b:Z

.field public c:LA2/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LA2/s<",
            "TN;>;"
        }
    .end annotation
.end field

.field public d:LA2/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LA2/s<",
            "TN;>;"
        }
    .end annotation
.end field

.field public e:Lw2/C;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/C<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LA2/g;->b:Z

    invoke-static {}, LA2/s;->d()LA2/s;

    move-result-object v0

    iput-object v0, p0, LA2/g;->c:LA2/s;

    invoke-static {}, LA2/s;->i()LA2/s;

    move-result-object v0

    iput-object v0, p0, LA2/g;->d:LA2/s;

    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v0

    iput-object v0, p0, LA2/g;->e:Lw2/C;

    iput-boolean p1, p0, LA2/g;->a:Z

    return-void
.end method
