.class public final synthetic Lorg/openjdk/tools/javah/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/DiagnosticListener;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javah/JavahTask;

.field public final synthetic b:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javah/JavahTask;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javah/a;->a:Lorg/openjdk/tools/javah/JavahTask;

    iput-object p2, p0, Lorg/openjdk/tools/javah/a;->b:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final report(Lorg/openjdk/javax/tools/Diagnostic;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javah/a;->a:Lorg/openjdk/tools/javah/JavahTask;

    iget-object v1, p0, Lorg/openjdk/tools/javah/a;->b:Ljava/io/PrintWriter;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javah/JavahTask;->a(Lorg/openjdk/tools/javah/JavahTask;Ljava/io/PrintWriter;Lorg/openjdk/javax/tools/Diagnostic;)V

    return-void
.end method
