-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Erstellungszeit: 23. Jan 2021 um 21:36
-- Server-Version: 5.7.32-1
-- PHP-Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `usrdb_poojskhm1`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `yogi`
--

CREATE TABLE `yogi` (
  `number` bigint(20) NOT NULL,
  `language` varchar(2) CHARACTER SET utf8 NOT NULL,
  `saying` varchar(300) CHARACTER SET utf8 NOT NULL,
  `comment` varchar(600) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Daten für Tabelle `yogi`
--

INSERT INTO `yogi` (`number`, `language`, `saying`, `comment`) VALUES
(1, 'de', 'Liebe kennt keine Furcht oder Vergeltung.', ''),
(2, 'de', 'Die Kraft der Liebe endet nie.', ''),
(3, 'de', 'Liebe deine Seele.', ''),
(4, 'de', 'Im Herzen ist man immer sorglos und glücklich.', ''),
(5, 'en', 'Be so happy that when others look at you they become happy too.', ''),
(6, 'en', 'May your light become a living universal light.', ''),
(7, 'en', 'You only give when you love.', ''),
(8, 'de', 'Das Geheimnis des Glücks ist die Freiheit.', ''),
(9, 'de', 'Das Geheimnis der Freiheit ist Mut.', ''),
(10, 'de', 'Du hast das Recht, glücklich zu sein', ''),
(11, 'de', 'Deine Selbstdisziplin ist dein einziger Freund.', ''),
(12, 'de', 'Ein entspannter Geist ist kreativ.', ''),
(13, 'de', 'Glück ist vollkommen.', ''),
(14, 'de', 'Jemanden beeindrucken wirkt für einen Moment. Vertrauen ist für immer.', ''),
(15, 'de', 'Es kommt nicht darauf an, geliebt zu werden, sondern zu lieben.', ''),
(16, 'de', 'Der Frieden ist in dir.', ''),
(17, 'de', 'Geduld zahlt sich aus.', ''),
(18, 'en', 'Your life is based on the capacity of energy in you, not outside of you.', ''),
(19, 'en', 'When ego is lost, limit is lost. You become infinite, kind and beautiful.', ''),
(20, 'en', 'Act selfless, you will be inifinite.', ''),
(21, 'en', 'Live for each other.', ''),
(22, 'en', 'The universe is a stage on which your mind dances with your body, guided by your heart.', ''),
(23, 'en', 'All knowledge is within you.', ''),
(24, 'en', 'The beauty in you is your spirit.', ''),
(25, 'en', 'Real happiness lies in that, which never comes nor goes, but simply is.', ''),
(26, 'en', 'Our thoughts are forming the world.', ''),
(27, 'en', 'May this day bring you peace, tranquility and harmony.', ''),
(28, 'en', 'Be proud of who you are.', ''),
(29, 'en', 'Travel light, live light, spread the light, be the light.', ''),
(30, 'en', 'Your choices will change the world', ''),
(31, 'de', 'Geh nur Wege mit Herz.', ''),
(32, 'en', 'You are unlimited.', ''),
(33, 'en', 'The best way of life is to be, simply be.', ''),
(34, 'en', 'To learn, read. To know, write. To master, teach.', ''),
(35, 'de', 'Leben ist teilen.', ''),
(36, 'de', 'Unschuld erweckt Intuition.', ''),
(37, 'de', 'Schätze die Person, die du bist.', ''),
(38, 'de', 'Ich finde jetzt eine neue Aufgabe.', ''),
(39, 'de', 'Sei mehr kosmisch als kosmetisch.', ''),
(40, 'de', 'Entwickle die Fähigkeit zuzuhören.', ''),
(41, 'de', 'Lerne in Stille, dir selbst zuzuhören.', ''),
(42, 'de', 'Lass dein Verhalten für sich sprechen.', ''),
(43, 'de', 'Lebe leicht, reise mit leichtem Gepäck.', ''),
(44, 'de', 'Sag nichts, zu dem du nicht stehen kannst.', ''),
(45, 'de', 'Du bist Teil des riesigen Lebensorchesters.', ''),
(46, 'de', 'Leben ohne Liebe ist wie Segeln ohne Segel.', ''),
(47, 'de', 'Lebe mit Respekt vor dir selbst und anderen.', ''),
(48, 'de', 'Dankbarkeit schenkt viele neue Möglichkeiten.', ''),
(49, 'de', 'Vergleiche dich nicht mit anderen, sei du selbst.', ''),
(50, 'de', 'Sprich geradeaus, einfach und mit einem Lächeln.', ''),
(51, 'de', 'Löse ein Problem und hundert andere verschwinden.', ''),
(52, 'de', 'Mitgefühl kennt kein Ende. Freundlichkeit kennt keine Feinde.', ''),
(53, 'de', 'Sich an jedem Moment zu erfreuen – das ist der Sinn des Lebens.', ''),
(54, 'de', 'Handle, reagiere nicht nur.', ''),
(55, 'de', 'Wenn wir ganz bei uns selbst sind, sind wir Liebe.', ''),
(56, 'de', 'Du bist schön, voller Gaben und Seligkeit.', ''),
(57, 'de', 'Ruhige Ausgeglichenheit ist die höchste Form des Selbst.', ''),
(58, 'de', 'Tue etwas, was du liebend gern tust.', ''),
(59, 'de', ' Eine kleine Ungeduld zerstört einen großen Plan.', ''),
(60, 'de', 'Übe keine Kritik und du wirst intuitiv.', ''),
(61, 'de', 'Entwickle Freundlichkeit, Mitgefühl und Anmut im Zusammenleben mit anderen.', ''),
(62, 'de', 'Allen zu dienen, das ist die Kunst glücklich zu sein.', ''),
(63, 'de', 'Intelligenz und Intuition sind zwei Freunde.', ''),
(64, 'de', 'Das Ende des Ego ist der Beginn der Universalität.', ''),
(65, 'de', 'Freude ist die Essenz des Erfolgs.', ''),
(66, 'de', 'Das Aussortieren des Unwesentlichen ist der Kern aller Lebensweisheit.', ''),
(67, 'de', 'Mit dem Herzen lebst du immer im Glück!', ''),
(68, 'de', 'Sei dir bewusst, dass du der andere bist.', ''),
(69, 'de', 'Mach dir selbst und anderen Mut.', ''),
(70, 'de', 'Sei ein Teil der Antwort auf die Probleme dieser Welt.', ''),
(71, 'de', 'Akzeptiere, dass du nur eine Sache auf einmal machen kannst.', ''),
(72, 'de', '99% von uns sind unsichtbar und unfassbar.', ''),
(73, 'de', 'Im Vergeben zeigt sich Größe.', ''),
(74, 'de', 'Mitgefühl bringt Verständnis.', ''),
(75, 'de', 'Suche nach dem Allerbesten in jeder Situation.', ''),
(76, 'de', 'Die Schönheit deiner Seele übertrifft alles – sie ist endlos.', ''),
(77, 'de', 'Wirst Du ein Teil des Ganzen, wird alles ein Teil von Dir.', ''),
(78, 'de', 'Liebe, Freundlichkeit und Mitgefühl sind die Wurzeln des Lebens.', ''),
(79, 'de', 'Lächeln reinigt die Zähne.', '');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `yogi`
--
ALTER TABLE `yogi`
  ADD PRIMARY KEY (`number`),
  ADD UNIQUE KEY `saying` (`saying`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `yogi`
--
ALTER TABLE `yogi`
  MODIFY `number` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
