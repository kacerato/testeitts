.class public final synthetic Lcom/android/tools/r8/r2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/JdkClassFileProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/JdkClassFileProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/r2;->b:Lcom/android/tools/r8/JdkClassFileProvider;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/r2;->b:Lcom/android/tools/r8/JdkClassFileProvider;

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {v0, p1}, Lcom/android/tools/r8/JdkClassFileProvider;->a(Lcom/android/tools/r8/JdkClassFileProvider;Ljava/nio/file/Path;)V

    return-void
.end method
