.class public final Lcom/android/tools/r8/naming/T0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/SourceFileProvider;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/naming/T0;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/tools/r8/naming/T0;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final allowDiscardingSourceFile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/naming/T0;->b:Z

    return v0
.end method

.method public final get(Lcom/android/tools/r8/SourceFileEnvironment;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lcom/android/tools/r8/naming/T0;->a:Ljava/lang/String;

    return-object p1
.end method
