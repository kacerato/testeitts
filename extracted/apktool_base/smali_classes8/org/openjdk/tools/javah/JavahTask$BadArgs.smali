.class public Lorg/openjdk/tools/javah/JavahTask$BadArgs;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javah/JavahTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BadArgs"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1487bf3ce4f654b5L


# instance fields
.field final args:[Ljava/lang/Object;

.field final key:Ljava/lang/String;

.field showUsage:Z

.field final synthetic this$0:Lorg/openjdk/tools/javah/JavahTask;


# direct methods
.method public varargs constructor <init>(Lorg/openjdk/tools/javah/JavahTask;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javah/JavahTask$BadArgs;->this$0:Lorg/openjdk/tools/javah/JavahTask;

    invoke-static {p1, p2, p3}, Lorg/openjdk/tools/javah/JavahTask;->access$000(Lorg/openjdk/tools/javah/JavahTask;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/openjdk/tools/javah/JavahTask$BadArgs;->key:Ljava/lang/String;

    iput-object p3, p0, Lorg/openjdk/tools/javah/JavahTask$BadArgs;->args:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public showUsage(Z)Lorg/openjdk/tools/javah/JavahTask$BadArgs;
    .locals 0

    iput-boolean p1, p0, Lorg/openjdk/tools/javah/JavahTask$BadArgs;->showUsage:Z

    return-object p0
.end method
