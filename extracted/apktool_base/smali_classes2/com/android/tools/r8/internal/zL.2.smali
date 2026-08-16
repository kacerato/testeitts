.class public final Lcom/android/tools/r8/internal/zL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/fQ;


# static fields
.field public static final b:Lcom/android/tools/r8/internal/nQ;


# instance fields
.field public a:Lcom/android/tools/r8/internal/OL;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/nQ;

    const-class v1, Lcom/android/tools/r8/internal/zL;

    invoke-static {v1}, Lcom/android/tools/r8/internal/te0;->a(Ljava/lang/Class;)Lcom/android/tools/r8/internal/Wd;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/nQ;-><init>(Lcom/android/tools/r8/internal/Wd;)V

    sput-object v0, Lcom/android/tools/r8/internal/zL;->b:Lcom/android/tools/r8/internal/nQ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getType()Lcom/android/tools/r8/internal/nQ;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/zL;->b:Lcom/android/tools/r8/internal/nQ;

    return-object v0
.end method
