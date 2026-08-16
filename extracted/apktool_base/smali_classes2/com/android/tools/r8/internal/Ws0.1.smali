.class public Lcom/android/tools/r8/internal/Ws0;
.super Lcom/android/tools/r8/internal/Zs0;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/Vs0;


# instance fields
.field public final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Vs0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Vs0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Zs0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ws0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Ws0;
    .locals 0

    return-object p0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ws0;->b:Ljava/lang/Object;

    return-object v0
.end method
