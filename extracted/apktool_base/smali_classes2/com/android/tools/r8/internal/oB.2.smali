.class public final Lcom/android/tools/r8/internal/oB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/pB;


# static fields
.field public static final a:Lcom/android/tools/r8/internal/oB;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/oB;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/oB;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/oB;->a:Lcom/android/tools/r8/internal/oB;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/sK;)Ljava/lang/Iterable;
    .locals 0

    invoke-static {p1}, Lcom/android/tools/r8/internal/CT;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    return-object p1
.end method
