.class public abstract Lun/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lun/d;


# instance fields
.field public final a:I

.field public final b:F

.field public final c:[F


# direct methods
.method public constructor <init>(IF[F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "area",
            "flagMergeThreshold",
            "bounds"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lun/a;->a:I

    iput p2, p0, Lun/a;->b:F

    iput-object p3, p0, Lun/a;->c:[F

    return-void
.end method


# virtual methods
.method public a()[F
    .locals 1

    iget-object v0, p0, Lun/a;->c:[F

    return-object v0
.end method
