.class public final Lcom/android/tools/r8/internal/gb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/util/ArrayList;

.field public final d:Lcom/android/tools/r8/internal/CH;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IILjava/util/ArrayList;Lcom/android/tools/r8/internal/CH;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/gb;->a:I

    iput p2, p0, Lcom/android/tools/r8/internal/gb;->b:I

    iput-object p3, p0, Lcom/android/tools/r8/internal/gb;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/tools/r8/internal/gb;->d:Lcom/android/tools/r8/internal/CH;

    return-void
.end method
