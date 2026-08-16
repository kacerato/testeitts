.class public final synthetic Lcom/android/tools/r8/internal/VW0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/synthesis/I;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/E0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/VW0;->a:Lcom/android/tools/r8/graph/E0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/VW0;->a:Lcom/android/tools/r8/graph/E0;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/T2;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object p1

    return-object p1
.end method
