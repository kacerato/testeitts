.class public final Lcom/android/tools/r8/internal/Mm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Km;


# instance fields
.field public final a:Ljava/io/BufferedWriter;


# direct methods
.method public constructor <init>(Ljava/io/BufferedWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Mm;->a:Ljava/io/BufferedWriter;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mm;->a:Ljava/io/BufferedWriter;

    const-string v1, "\r"

    const-string v2, "<CR>"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/Mm;->a:Ljava/io/BufferedWriter;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mm;->a:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method
