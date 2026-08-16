.class public final Lcom/android/tools/r8/internal/Ld;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/Ld;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Jd;

.field public final b:Lcom/android/tools/r8/internal/Gd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/Ld;

    sget-object v1, Lcom/android/tools/r8/internal/Jd;->b:Lcom/android/tools/r8/internal/Jd;

    sget-object v2, Lcom/android/tools/r8/internal/Gd;->c:Lcom/android/tools/r8/internal/Gd;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Ld;-><init>(Lcom/android/tools/r8/internal/Jd;Lcom/android/tools/r8/internal/Gd;)V

    sput-object v0, Lcom/android/tools/r8/internal/Ld;->c:Lcom/android/tools/r8/internal/Ld;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Jd;Lcom/android/tools/r8/internal/Gd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ld;->a:Lcom/android/tools/r8/internal/Jd;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ld;->b:Lcom/android/tools/r8/internal/Gd;

    return-void
.end method
