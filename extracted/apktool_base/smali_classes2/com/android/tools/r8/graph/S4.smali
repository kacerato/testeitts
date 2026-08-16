.class public final Lcom/android/tools/r8/graph/S4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/graph/S4;


# instance fields
.field public final a:Lcom/android/tools/r8/graph/M2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/graph/S4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/graph/S4;-><init>(Lcom/android/tools/r8/graph/M2;)V

    sput-object v0, Lcom/android/tools/r8/graph/S4;->b:Lcom/android/tools/r8/graph/S4;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/S4;->a:Lcom/android/tools/r8/graph/M2;

    return-void
.end method
