.class public final Lcom/android/tools/r8/internal/r8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public a:Ljava/util/Set;

.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/internal/r8;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/r8;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/r8;->b:Z

    return-object p0
.end method
