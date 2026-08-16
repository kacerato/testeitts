package com.itsmagic.engine.Engines.Engine.Vector;

public class c extends K8.f {
    private static double cost;
    private static double newX;
    private static double newY;
    private static double newZ;
    private static double sint;

    public void rotateVectorAboutXAxis(double theta, Vector3 vectorToRotate, Vector3 vectorToPutResultsIn) {
        sint = Math.sin(theta);
        cost = Math.cos(theta);
        newX = vectorToRotate.getX();
        newY = (vectorToRotate.getY() * cost) - (vectorToRotate.getZ() * sint);
        newZ = (vectorToRotate.getY() * sint) + (vectorToRotate.getZ() * cost);
        vectorToPutResultsIn.setX(Nc.b.g(newX));
        vectorToPutResultsIn.setY(Nc.b.g(newY));
        vectorToPutResultsIn.setZ(Nc.b.g(newZ));
    }

    public void rotateVectorAboutYAxis(double theta, Vector3 vectorToRotate, Vector3 vectorToPutResultsIn) {
        sint = Math.sin(theta);
        cost = Math.cos(theta);
        newX = (vectorToRotate.getZ() * sint) + (vectorToRotate.getX() * cost);
        newY = vectorToRotate.getY();
        newZ = (vectorToRotate.getZ() * cost) - (vectorToRotate.getX() * sint);
        vectorToPutResultsIn.setX(Nc.b.g(newX));
        vectorToPutResultsIn.setY(Nc.b.g(newY));
        vectorToPutResultsIn.setZ(Nc.b.g(newZ));
    }

    public void rotateVectorAboutZAxis(double theta, Vector3 vectorToRotate, Vector3 vectorToPutResultsIn) {
        sint = Math.sin(theta);
        cost = Math.cos(theta);
        newX = (vectorToRotate.getX() * cost) - (vectorToRotate.getY() * sint);
        newY = (vectorToRotate.getX() * sint) + (vectorToRotate.getY() * cost);
        newZ = vectorToRotate.getZ();
        vectorToPutResultsIn.setX(Nc.b.g(newX));
        vectorToPutResultsIn.setY(Nc.b.g(newY));
        vectorToPutResultsIn.setZ(Nc.b.g(newZ));
    }
}
