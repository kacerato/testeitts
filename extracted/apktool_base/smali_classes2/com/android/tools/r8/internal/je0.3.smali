.class public final Lcom/android/tools/r8/internal/je0;
.super Lcom/android/tools/r8/internal/ZQ;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ny;


# static fields
.field public static final b:Lcom/android/tools/r8/internal/je0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/je0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/je0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/je0;->b:Lcom/android/tools/r8/internal/je0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/ZQ;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/Ih0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Ih0;->e:Lcom/android/tools/r8/internal/hh0;

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/tools/r8/internal/hh0;->e:Lcom/android/tools/r8/internal/hh0;

    :cond_0
    return-object p1
.end method
