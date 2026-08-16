.class public final Lcom/android/tools/r8/internal/WL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/tQ;


# static fields
.field public static final c:Lcom/android/tools/r8/internal/nQ;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/nQ;

    const-class v1, Lcom/android/tools/r8/internal/WL;

    invoke-static {v1}, Lcom/android/tools/r8/internal/te0;->a(Ljava/lang/Class;)Lcom/android/tools/r8/internal/Wd;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/nQ;-><init>(Lcom/android/tools/r8/internal/Wd;)V

    sput-object v0, Lcom/android/tools/r8/internal/WL;->c:Lcom/android/tools/r8/internal/nQ;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/WL;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getType()Lcom/android/tools/r8/internal/nQ;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/WL;->c:Lcom/android/tools/r8/internal/nQ;

    return-object v0
.end method
