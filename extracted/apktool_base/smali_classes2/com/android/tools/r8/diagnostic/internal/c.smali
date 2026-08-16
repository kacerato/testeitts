.class public abstract Lcom/android/tools/r8/diagnostic/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/diagnostic/DefinitionContext;


# instance fields
.field public final a:Lcom/android/tools/r8/origin/Origin;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/diagnostic/internal/c;->a:Lcom/android/tools/r8/origin/Origin;

    return-void
.end method


# virtual methods
.method public final getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/diagnostic/internal/c;->a:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method
