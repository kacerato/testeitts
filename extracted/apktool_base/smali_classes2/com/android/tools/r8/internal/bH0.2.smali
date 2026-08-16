.class public final synthetic Lcom/android/tools/r8/internal/bH0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Gf0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/nC;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/nC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/bH0;->a:Lcom/android/tools/r8/internal/nC;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bH0;->a:Lcom/android/tools/r8/internal/nC;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/HR;->a(Lcom/android/tools/r8/internal/nC;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
