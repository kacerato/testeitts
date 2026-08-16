.class public final Lw2/e$B;
.super Lw2/e$A;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "B"
.end annotation


# static fields
.field public static final f:Lw2/e$B;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw2/e$B;

    invoke-direct {v0}, Lw2/e$B;-><init>()V

    sput-object v0, Lw2/e$B;->f:Lw2/e$B;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "\u0000\u05be\u05d0\u05f3\u0600\u0750\u0e00\u1e00\u2100\ufb50\ufe70\uff61"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "\u04f9\u05be\u05ea\u05f4\u06ff\u077f\u0e7f\u20af\u213a\ufdff\ufeff\uffdc"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string v2, "CharMatcher.singleWidth()"

    invoke-direct {p0, v2, v0, v1}, Lw2/e$A;-><init>(Ljava/lang/String;[C[C)V

    return-void
.end method
