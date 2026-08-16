.class public Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;
.super Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final e:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;-><init>(IIZ)V

    sput-object v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;->e:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;-><init>(IIZ)V

    return-void
.end method
