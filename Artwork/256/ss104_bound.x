xof 0302txt 0032
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template FrameTransformMatrix {
 <F6F23F41-7686-11cf-8F52-0040333594A3>
 Matrix4x4 frameMatrix;
}

template Frame {
 <3D82AB46-62DA-11cf-AB39-0020AF71E433>
 [...]
}
template FloatKeys {
 <10DD46A9-775B-11cf-8F52-0040333594A3>
 DWORD nValues;
 array FLOAT values[nValues];
}

template TimedFloatKeys {
 <F406B180-7B3B-11cf-8F52-0040333594A3>
 DWORD time;
 FloatKeys tfkeys;
}

template AnimationKey {
 <10DD46A8-775B-11cf-8F52-0040333594A3>
 DWORD keyType;
 DWORD nKeys;
 array TimedFloatKeys keys[nKeys];
}

template AnimationOptions {
 <E2BF56C0-840F-11cf-8F52-0040333594A3>
 DWORD openclosed;
 DWORD positionquality;
}

template Animation {
 <3D82AB4F-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template AnimationSet {
 <3D82AB50-62DA-11cf-AB39-0020AF71E433>
 [Animation]
}

Header {
 1;
 0;
 1;
}

Frame frm-bounding_model {
  FrameTransformMatrix {
-1.000000,0.000000,-0.000000,0.000000,
-0.000000,0.000000,1.000000,0.000000,
0.000000,1.000000,-0.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Frame frm-bound01 {
  FrameTransformMatrix {
-1.000000,0.000000,-0.000000,0.000000,
-0.000000,0.000000,1.000000,0.000000,
0.000000,1.000000,-0.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound01 {
 15;
 -7.415105;2.036617;-40.492622;,
 -7.920360;-12.919143;-22.633394;,
 -21.474764;-2.536915;-3.106090;,
 -21.477020;2.485318;-2.813330;,
 -33.318527;2.321669;13.735056;,
 -33.318527;-2.324857;13.735055;,
 -5.132664;-8.356586;-39.797432;,
 -7.920362;12.915961;-22.633392;,
 -7.417881;-1.861653;-41.078144;,
 -34.322323;-3.074692;-13.591064;,
 -34.322323;3.071505;-13.591063;,
 -18.087708;-2.136485;-49.877659;,
 -18.087709;2.133302;-49.877663;,
 -9.062221;1.264527;-59.526264;,
 -9.062220;-1.267707;-59.526268;;

 26;
 3;13,14,11;,
 3;12,13,11;,
 3;10,4,3;,
 3;10,7,0;,
 3;2,3,4;,
 3;9,1,2;,
 3;2,5,9;,
 3;12,11,9;,
 3;10,12,9;,
 3;9,11,8;,
 3;3,7,10;,
 3;5,4,10;,
 3;9,5,10;,
 3;0,13,12;,
 3;11,14,8;,
 3;0,12,10;,
 3;9,8,6;,
 3;1,9,6;,
 3;5,2,4;,
 3;8,14,13;,
 3;3,2,1;,
 3;7,3,1;,
 3;1,6,8;,
 3;7,1,8;,
 3;0,7,8;,
 3;13,0,8;;

 MeshNormals {
  15;
  0.464470;0.869108;-0.170056;,
  0.812754;-0.461509;0.355585;,
  0.613324;-0.545753;0.570953;,
  0.622904;0.527004;0.578150;,
  0.388029;0.572049;0.722629;,
  -0.693352;-0.597064;0.403457;,
  -0.094871;-0.788075;-0.608225;,
  0.703149;0.654786;0.277194;,
  0.879161;-0.442623;-0.176524;,
  -0.675171;-0.711038;-0.196390;,
  -0.670576;0.729704;-0.133643;,
  -0.675620;-0.560373;-0.479082;,
  -0.677391;0.557436;-0.480007;,
  0.294682;0.513258;-0.806057;,
  0.243214;-0.753397;-0.610933;;

  26;
  3;13,14,11;,
  3;12,13,11;,
  3;10,4,3;,
  3;10,7,0;,
  3;2,3,4;,
  3;9,1,2;,
  3;2,5,9;,
  3;12,11,9;,
  3;10,12,9;,
  3;9,11,8;,
  3;3,7,10;,
  3;5,4,10;,
  3;9,5,10;,
  3;0,13,12;,
  3;11,14,8;,
  3;0,12,10;,
  3;9,8,6;,
  3;1,9,6;,
  3;5,2,4;,
  3;8,14,13;,
  3;3,2,1;,
  3;7,3,1;,
  3;1,6,8;,
  3;7,1,8;,
  3;0,7,8;,
  3;13,0,8;;
 }
}
}
Frame frm-bound02 {
  FrameTransformMatrix {
-1.000000,0.000000,-0.000000,0.000000,
-0.000000,0.000000,1.000000,0.000000,
0.000000,1.000000,-0.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound02 {
 15;
 7.210956;2.040190;-40.492622;,
 21.425383;-2.535127;-3.106086;,
 21.426821;2.487106;-2.813326;,
 7.920359;-12.919141;-22.633390;,
 33.318516;2.321673;13.735062;,
 33.318516;-2.324852;13.735061;,
 5.075358;-8.447800;-39.780621;,
 7.920356;12.915963;-22.633390;,
 34.322319;-3.074686;-13.591059;,
 34.322315;3.071511;-13.591058;,
 18.087711;-2.136480;-49.877659;,
 18.087711;2.133307;-49.877659;,
 7.246629;-2.044083;-41.044506;,
 9.062223;1.264530;-59.526264;,
 9.062224;-1.267703;-59.526268;;

 26;
 3;12,10,8;,
 3;13,14,12;,
 3;12,14,10;,
 3;11,13,0;,
 3;10,11,9;,
 3;8,10,9;,
 3;0,7,9;,
 3;1,5,4;,
 3;3,6,8;,
 3;14,13,11;,
 3;10,14,11;,
 3;2,1,4;,
 3;9,11,0;,
 3;6,12,8;,
 3;1,3,8;,
 3;2,4,9;,
 3;1,8,5;,
 3;4,5,8;,
 3;9,4,8;,
 3;9,7,2;,
 3;1,2,7;,
 3;3,1,7;,
 3;12,6,3;,
 3;0,12,3;,
 3;7,0,3;,
 3;12,0,13;;

 MeshNormals {
  15;
  -0.645394;0.748934;-0.150214;,
  -0.675744;-0.443572;0.588739;,
  -0.504362;0.678587;0.533984;,
  -0.810474;-0.463036;0.358789;,
  0.213374;0.594267;0.775448;,
  0.135528;-0.834270;0.534439;,
  0.096894;-0.789579;-0.605951;,
  -0.703341;0.653616;0.279460;,
  0.676377;-0.709706;-0.197056;,
  0.670682;0.729494;-0.134255;,
  0.677640;-0.556946;-0.480224;,
  0.677495;0.557244;-0.480084;,
  -0.813764;-0.541202;-0.211869;,
  -0.692448;0.530658;-0.488792;,
  0.225494;-0.536996;-0.812888;;

  26;
  3;12,10,8;,
  3;13,14,12;,
  3;12,14,10;,
  3;11,13,0;,
  3;10,11,9;,
  3;8,10,9;,
  3;0,7,9;,
  3;1,5,4;,
  3;3,6,8;,
  3;14,13,11;,
  3;10,14,11;,
  3;2,1,4;,
  3;9,11,0;,
  3;6,12,8;,
  3;1,3,8;,
  3;2,4,9;,
  3;1,8,5;,
  3;4,5,8;,
  3;9,4,8;,
  3;9,7,2;,
  3;1,2,7;,
  3;3,1,7;,
  3;12,6,3;,
  3;0,12,3;,
  3;7,0,3;,
  3;12,0,13;;
 }
}
}
Frame frm-bound03 {
  FrameTransformMatrix {
-1.000000,0.000000,-0.000000,0.000000,
-0.000000,0.000000,1.000000,0.000000,
0.000000,1.000000,-0.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound03 {
 24;
 -7.415108;2.036618;-40.492619;,
 7.210956;2.040190;-40.492622;,
 -7.920362;-12.919142;-22.633392;,
 21.425383;-2.535127;-3.106086;,
 7.268411;1.902701;21.357668;,
 -21.474764;-2.536915;-3.106089;,
 -21.477020;2.485318;-2.813329;,
 21.426821;2.487106;-2.813326;,
 7.920359;-12.919141;-22.633390;,
 7.265634;-1.995569;20.772148;,
 -7.360428;-1.999139;20.772150;,
 -5.132666;-8.356585;-39.797432;,
 5.075358;-8.447800;-39.780621;,
 -3.044353;-9.410120;16.667974;,
 3.044345;-9.410120;16.667978;,
 -7.364763;1.899129;21.357670;,
 2.661233;2.536309;47.065197;,
 -2.661247;2.536309;47.065197;,
 -2.017228;4.408598;60.755451;,
 2.017212;4.408599;60.755451;,
 7.920356;12.915963;-22.633390;,
 -7.920364;12.915962;-22.633390;,
 -7.417884;-1.861651;-41.078144;,
 7.246629;-2.044083;-41.044506;;

 44;
 3;8,3,9;,
 3;21,15,17;,
 3;8,2,11;,
 3;1,0,21;,
 3;20,1,21;,
 3;19,18,17;,
 3;16,19,17;,
 3;2,8,14;,
 3;13,2,14;,
 3;6,5,15;,
 3;4,9,7;,
 3;5,10,15;,
 3;10,5,2;,
 3;22,23,12;,
 3;11,22,12;,
 3;1,23,0;,
 3;17,18,21;,
 3;21,18,19;,
 3;20,21,19;,
 3;23,22,0;,
 3;20,19,16;,
 3;9,3,7;,
 3;15,10,9;,
 3;4,15,9;,
 3;20,4,7;,
 3;2,13,10;,
 3;16,4,20;,
 3;9,14,8;,
 3;21,6,15;,
 3;15,4,16;,
 3;17,15,16;,
 3;12,8,11;,
 3;13,14,9;,
 3;10,13,9;,
 3;23,1,20;,
 3;12,23,20;,
 3;8,12,20;,
 3;7,3,8;,
 3;20,7,8;,
 3;5,6,21;,
 3;2,5,21;,
 3;22,11,2;,
 3;0,22,2;,
 3;21,0,2;;

 MeshNormals {
  24;
  -0.542949;0.303479;-0.783011;,
  0.311970;0.495459;-0.810676;,
  -0.736534;-0.661898;-0.139313;,
  0.907461;-0.412682;0.078787;,
  0.726048;0.074316;0.683616;,
  -0.965392;-0.259250;0.028431;,
  -0.915965;0.394213;0.074860;,
  0.976832;0.211950;0.029616;,
  0.633862;-0.756877;-0.159239;,
  0.569877;-0.378080;0.729587;,
  -0.492857;-0.522687;0.695622;,
  -0.349734;-0.764085;-0.542089;,
  0.579601;-0.432053;-0.690937;,
  -0.331109;-0.827923;0.452670;,
  0.333932;-0.826332;0.453503;,
  -0.733955;-0.168241;0.658031;,
  0.598583;-0.788884;0.139143;,
  -0.599878;-0.787688;0.140336;,
  -0.954053;-0.090988;0.285490;,
  0.877869;-0.080135;0.472149;,
  0.869596;0.461644;-0.175178;,
  -0.697309;0.694214;-0.178402;,
  -0.534397;-0.053704;-0.843526;,
  0.535167;-0.008713;-0.844701;;

  44;
  3;8,3,9;,
  3;21,15,17;,
  3;8,2,11;,
  3;1,0,21;,
  3;20,1,21;,
  3;19,18,17;,
  3;16,19,17;,
  3;2,8,14;,
  3;13,2,14;,
  3;6,5,15;,
  3;4,9,7;,
  3;5,10,15;,
  3;10,5,2;,
  3;22,23,12;,
  3;11,22,12;,
  3;1,23,0;,
  3;17,18,21;,
  3;21,18,19;,
  3;20,21,19;,
  3;23,22,0;,
  3;20,19,16;,
  3;9,3,7;,
  3;15,10,9;,
  3;4,15,9;,
  3;20,4,7;,
  3;2,13,10;,
  3;16,4,20;,
  3;9,14,8;,
  3;21,6,15;,
  3;15,4,16;,
  3;17,15,16;,
  3;12,8,11;,
  3;13,14,9;,
  3;10,13,9;,
  3;23,1,20;,
  3;12,23,20;,
  3;8,12,20;,
  3;7,3,8;,
  3;20,7,8;,
  3;5,6,21;,
  3;2,5,21;,
  3;22,11,2;,
  3;0,22,2;,
  3;21,0,2;;
 }
}
}
Frame frm-bound04 {
  FrameTransformMatrix {
-1.000000,0.000000,-0.000000,0.000000,
-0.000000,0.000000,1.000000,0.000000,
0.000000,1.000000,-0.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound04 {
 6;
 7.265634;-1.995569;20.772148;,
 -7.360428;-1.999139;20.772150;,
 -2.613725;-2.299004;28.240137;,
 2.613714;-2.299004;28.240137;,
 -3.044353;-9.410120;16.667974;,
 3.044345;-9.410120;16.667978;;

 8;
 3;2,3,0;,
 3;1,2,0;,
 3;4,5,3;,
 3;2,4,3;,
 3;3,5,0;,
 3;4,2,1;,
 3;5,4,1;,
 3;0,5,1;;

 MeshNormals {
  6;
  0.336073;0.921698;-0.193719;,
  -0.338389;0.676771;-0.653815;,
  -0.531114;0.309430;0.788778;,
  0.473724;-0.584831;0.658451;,
  -0.481274;-0.832673;0.273919;,
  0.604499;-0.497172;-0.622416;;

  8;
  3;2,3,0;,
  3;1,2,0;,
  3;4,5,3;,
  3;2,4,3;,
  3;3,5,0;,
  3;4,2,1;,
  3;5,4,1;,
  3;0,5,1;;
 }
}
}
}
AnimationSet {
 Animation anim-bounding_model {
  {frm-bounding_model}
  AnimationKey {
  0;
  2;
  1; 4; -0.000000, 0.000000, -0.707107, 0.707107;;,
  100; 4; -0.000000, 0.000000, -0.707107, 0.707107;;;
  }
 }
 Animation anim-bound01 {
  {frm-bound01}
  AnimationKey {
  0;
  2;
  1; 4; -0.000000, 0.000000, -0.707107, 0.707107;;,
  100; 4; -0.000000, 0.000000, -0.707107, 0.707107;;;
  }
 }
 Animation anim-bound02 {
  {frm-bound02}
  AnimationKey {
  0;
  2;
  1; 4; -0.000000, 0.000000, -0.707107, 0.707107;;,
  100; 4; -0.000000, 0.000000, -0.707107, 0.707107;;;
  }
 }
 Animation anim-bound03 {
  {frm-bound03}
  AnimationKey {
  0;
  2;
  1; 4; -0.000000, 0.000000, -0.707107, 0.707107;;,
  100; 4; -0.000000, 0.000000, -0.707107, 0.707107;;;
  }
 }
 Animation anim-bound04 {
  {frm-bound04}
  AnimationKey {
  0;
  2;
  1; 4; -0.000000, 0.000000, -0.707107, 0.707107;;,
  100; 4; -0.000000, 0.000000, -0.707107, 0.707107;;;
  }
 }
}