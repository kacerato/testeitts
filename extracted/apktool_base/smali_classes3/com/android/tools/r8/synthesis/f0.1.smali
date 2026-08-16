.class public final synthetic Lcom/android/tools/r8/synthesis/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/synthesis/E;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/synthesis/C;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/synthesis/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/f0;->a:Lcom/android/tools/r8/synthesis/C;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/synthesis/A;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/f0;->a:Lcom/android/tools/r8/synthesis/C;

    invoke-static {v0}, Lcom/android/tools/r8/synthesis/E;->a(Lcom/android/tools/r8/synthesis/C;)Lcom/android/tools/r8/synthesis/A;

    move-result-object v0

    return-object v0
.end method
