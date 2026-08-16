.class public final Lcom/android/tools/r8/internal/Pt;
.super Lcom/android/tools/r8/internal/iC;
.source "SourceFile"


# static fields
.field public static final h:Lcom/android/tools/r8/internal/Pt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Pt;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Pt;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Pt;->h:Lcom/android/tools/r8/internal/Pt;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/tools/r8/internal/iC;-><init>(ILcom/android/tools/r8/internal/nC;)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/iC;->f:Lcom/android/tools/r8/internal/nC;

    return-object v0
.end method

.method public final g()Lcom/android/tools/r8/internal/nC;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/iC;->f:Lcom/android/tools/r8/internal/nC;

    return-object v0
.end method
