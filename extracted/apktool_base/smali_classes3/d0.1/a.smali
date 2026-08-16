.class public final synthetic Ld0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld0/a;->b:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ld0/a;->b:Ljava/lang/StringBuilder;

    check-cast p1, Lcom/github/javaparser/javadoc/JavadocBlockTag;

    invoke-static {v0, p1}, Lcom/github/javaparser/javadoc/Javadoc;->a(Ljava/lang/StringBuilder;Lcom/github/javaparser/javadoc/JavadocBlockTag;)V

    return-void
.end method
