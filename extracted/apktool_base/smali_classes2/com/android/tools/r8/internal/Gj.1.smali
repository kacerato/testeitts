.class public final Lcom/android/tools/r8/internal/Gj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/Gj;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Gj;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v1}, Lcom/android/tools/r8/internal/Gj;-><init>(Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/android/tools/r8/internal/Gj;->c:Lcom/android/tools/r8/internal/Gj;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Gj;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Gj;->b:Ljava/util/List;

    return-void
.end method
