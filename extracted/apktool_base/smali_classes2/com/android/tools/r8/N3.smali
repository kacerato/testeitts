.class public final synthetic Lcom/android/tools/r8/N3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ResourcePath;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/b;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/N3;->a:Lcom/android/tools/r8/b;

    return-void
.end method


# virtual methods
.method public final location()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/N3;->a:Lcom/android/tools/r8/b;

    invoke-virtual {v0}, Lcom/android/tools/r8/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
