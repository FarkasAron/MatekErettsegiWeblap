export type Problem = {
  id: string;
  year: number;
  exam_type: "kozep" | "emelt";
  exam_session: string;
  exam_part: string | null;
  problem_number: number;
  sub_part: string | null;
  problem_image_url: string | null;
  max_points: number | null;
  topic_tags: string[];
  ocr_used: boolean;
};

export const SESSION_LABELS: Record<string, string> = {
  majus:   "május",
  oktober: "október",
  februar: "február",
};

export const TOPIC_LABELS: Record<string, string> = {
  halmazok:               "Halmazok",
  logika:                 "Matematikai logika",
  kombinatorika:          "Kombinatorika",
  valoszinuseg:           "Valószínűség-számítás",
  statisztika:            "Statisztika",
  sorozatok:              "Sorozatok",
  fuggvenyek:             "Függvények",
  exponencialis:          "Exponenciális és logaritmikus függvények",
  trigonometria:          "Trigonometria",
  "geometria-sik":        "Síkgeometria",
  "geometria-ter":        "Térgeometria",
  "koordinata-geometria": "Koordináta-geometria",
  vektorok:               "Vektorok",
  egyenletek:             "Egyenletek és egyenlőtlenségek",
  differencialszamitas:   "Differenciálszámítás",
  integralszamitas:       "Integrálszámítás",
  komplex:                "Komplex számok",
  szamelmelet:            "Számelmélet",
  bizonyitas:             "Bizonyítás",
  szovegfeladas:          "Szöveges feladat",
  penzugy:                "Pénzügyi matematika",
  matrixok:               "Mátrixok",
  grafelmelet:            "Gráfelmélet",
  informalis:             "Informális logika",
  egyeb:                  "Egyéb",
};
