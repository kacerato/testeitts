.class public final synthetic Lcom/android/tools/r8/internal/K61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Wr0;


# instance fields
.field public final synthetic a:Ljava/io/OutputStreamWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/OutputStreamWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/K61;->a:Ljava/io/OutputStreamWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/K61;->a:Ljava/io/OutputStreamWriter;

    check-cast p1, Lcom/android/tools/r8/internal/z4;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/c4;->a(Ljava/io/OutputStreamWriter;Lcom/android/tools/r8/internal/z4;)V

    return-void
.end method
